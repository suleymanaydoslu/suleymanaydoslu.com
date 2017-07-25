<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

use Model\Post;

class PostsController extends Admin_Controller
{
    /* All posts */
    public function index()
    {

        $this->data['posts'] = Post::all();
        $this->data['count'] = Post::count_all();

        $this->load->view('panel/posts/index', $this->data);
    }

    /* Create Page */
    public function create()
    {
        $this->load->view('panel/posts/create', $this->data);
    }

    /*
     * Storing post
     */
    public function store()
    {
        if ($this->input->post()) {

            $this->load->library('form_validation');

            $this->form_validation->set_rules('title', lang('title'), 'required|xss_clean');
            $this->form_validation->set_rules('description', lang('description'), 'required|xss_clean');
            $this->form_validation->set_rules('status', lang('status'), 'required|xss_clean');
            $this->form_validation->set_rules('content', lang('content'), 'required|xss_clean');

            if ($this->form_validation->run() == FALSE) {

                $this->data['errorMessage'] = validation_errors();
                $this->load->view('panel/posts/create', $this->data);
            } else {

                $array = [
                    'title' => $this->input->post('title'),
                    'slug' => url_title(convert_accented_characters($this->input->post('title')), "dash", TRUE),
                    'description' => $this->input->post('description'),
                    'content' => $this->input->post('content'),
                    'status' => $this->input->post('status')
                ];

                $post = Post::make($array);

                if ($post->save(TRUE)) {

                    redirect(base_url('panel/posts'));
                } else {

                    $this->data['errorMessage'] = 'An error occured.';
                    $this->load->view('panel/posts/create', $this->data);
                }
            }
        } else {

            exit('No access allowed');
        }
    }

    /* Edit Page */
    public function edit($id)
    {
        $post = $this->data['post'] = Post::where('id', $id)->first();

        if ($post) {

            $this->load->view('panel/posts/edit', $this->data);
        } else {

            show_404();
        }
    }

    public function update($id)
    {
        $post = $this->data['post'] = Post::where('id', $id)->first();

        if ($post) {

            if ($this->input->post()) {

                $this->load->library('form_validation');

                $this->form_validation->set_rules('title', lang('title'), 'required|xss_clean');
                $this->form_validation->set_rules('description', lang('description'), 'required|xss_clean');
                $this->form_validation->set_rules('status', lang('status'), 'required|xss_clean');
                $this->form_validation->set_rules('content', lang('content'), 'required|xss_clean');

                if ($this->form_validation->run() == FALSE) {

                    $this->data['errorMessage'] = validation_errors();
                } else {

                    $post->title = $this->input->post('title');
                    $post->description = $this->input->post('description');
                    $post->content = $this->input->post('content');
                    $post->status = $this->input->post('status');

                    if ($post->save()) {

                        $this->session->set_flashdata('success', 'Updated successfully.');
                        redirect(base_url('panel/post/edit/' . $post->id));
                    } else {

                        $this->data['errorMessage'] = "An error occured during update user";
                    }
                }
                $this->load->view('panel/posts/edit', $this->data);
            }
        } else {

            show_404();
        }
    }

    public function delete($id)
    {
        $post = Post::where('id', $id)->first();

        if ($post) {

            $post->delete();
            $this->session->set_flashdata('success', 'Deleted successfully.');
            redirect(base_url('panel/posts'));
        } else {

            show_404();
        }
    }
}