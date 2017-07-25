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

            if ($this->form_validation->run() == FALSE) {

                $this->data['errorMessage'] = validation_errors();
                $this->load->view('panel/posts/create', $this->data);
            } else {

                $array = [
                    'title' => $this->input->post('title'),
                    'slug' => url_title(convert_accented_characters($this->input->post('title')), "dash", TRUE),
                    'description' => $this->input->post('description'),
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
        }else{

            exit('No access allowed');
        }
    }
}