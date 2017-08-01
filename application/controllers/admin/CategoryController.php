<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

use Model\Category;

class CategoryController extends Admin_Controller
{
    /* All categories */
    public function index()
    {

        $this->data['categories'] = Category::all();
        $this->data['count'] = Category::count_all();

        $this->load->view('panel/categories/index', $this->data);
    }

    /* Create */
    public function create()
    {
        $this->load->view('panel/categories/create', $this->data);
    }

    /* Store */
    public function store()
    {
        if ($this->input->post()) {

            $this->load->library('form_validation');

            $this->form_validation->set_rules('title', lang('title'), 'required|xss_clean');

            if ($this->form_validation->run() == FALSE) {

                $this->data['errorMessage'] = validation_errors();
                $this->load->view('panel/category/create', $this->data);
            } else {

                $array = [
                    'title' => $this->input->post('title'),
                    'slug' => url_title(convert_accented_characters($this->input->post('title')), "dash", TRUE)
                ];

                $category = Category::make($array);

                if ($category->save(TRUE)) {

                    $this->session->set_flashdata('success', 'Created successfully.');
                    redirect(base_url('panel/categories'));
                } else {

                    $this->data['errorMessage'] = 'An error occured.';
                    $this->load->view('panel/categories/create', $this->data);
                }
            }
        } else {

            exit('No access allowed');
        }
    }

    /* Edit Page */
    public function edit($id)
    {
        $check = $this->data['category'] = Category::where('id', $id)->first();

        if ($check) {

            $this->load->view('panel/categories/edit', $this->data);
        } else {

            show_404();
        }
    }

    public function update($id)
    {
        $category = $this->data['category'] = Category::where('id', $id)->first();

        if ($category) {

            if ($this->input->post()) {

                $this->load->library('form_validation');

                $this->form_validation->set_rules('title', lang('title'), 'required|xss_clean');

                if ($this->form_validation->run() == FALSE) {

                    $this->data['errorMessage'] = validation_errors();
                } else {

                    if ($category->title != $this->input->post('title')) {
                        $category->slug = url_title(convert_accented_characters($this->input->post('title')), "dash", TRUE);
                    }

                    $category->title = $this->input->post('title');

                    if ($category->save()) {

                        $this->session->set_flashdata('success', 'Updated successfully.');
                        redirect(base_url('panel/category/edit/' . $category->id));
                    } else {

                        $this->data['errorMessage'] = "An error occured during update user";
                    }
                }
                $this->load->view('panel/categories/edit', $this->data);
            }
        } else {

            show_404();
        }
    }

    public function delete($id)
    {
        $category = Category::where('id', $id)->first();

        if ($category) {

            $category->delete();
            $this->session->set_flashdata('success', 'Deleted successfully.');
            redirect(base_url('panel/categories'));
        } else {

            show_404();
        }
    }
}