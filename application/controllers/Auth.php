<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *
 * Controller Auth
 *
 * This controller for ...
 *
 * @package   CodeIgniter
 * @category  Controller CI
 * @author    Ryan Aprianto
 * @link      https://github.com/Ryan1604/
 *
 */

class Auth extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged_in' !== TRUE)) {
			redirect('auth');	
		}
		$this->load->model('M_Auth');
  	}

  	public function index()
 	{
		if ($this->session->userdata('role') === '1') {
			redirect('sa/dashboard');
		} elseif ($this->session->userdata('role') === '2') {
			redirect('a/dashboard');
		} elseif ($this->session->userdata('role') === '3') {
			redirect('j/dashboard');
		} elseif ($this->session->userdata('role') === '4') {
				redirect('rt/dashboard');
		} else {
			$this->load->view('layout/backend/auth/header');
	 	 	$this->load->view('auth/login');
			$this->load->view('layout/backend/auth/footer');
		}
	}

	public function rt()
 	{
		if ($this->session->userdata('role') === '1') {
			redirect('sa/dashboard');
		} elseif ($this->session->userdata('role') === '2') {
			redirect('a/dashboard');
		} elseif ($this->session->userdata('role') === '3') {
			redirect('j/dashboard');
		} elseif ($this->session->userdata('role') === '4') {
				redirect('rt/dashboard');
		} else {
			$this->load->view('layout/backend/auth/header');
	 	 	$this->load->view('auth/login_rt');
			$this->load->view('layout/backend/auth/footer');
		}
	}

	public function login()	
	{
		$email 		= $this->input->post('email', TRUE);
		$password	= $this->input->post('password', TRUE);
		$result		= $this->M_Auth->check_admin($email, $password);
		if($result->num_rows() > 0)
		{
			$data		= $result->row_array();
			$id			= $data['id'];
			$email		= $data['email'];
			$name		= $data['name'];
			$password	= $data['password'];
			$img		= $data['img'];
			$role		= $data['role'];
			$sesdata	= array(
				'id'		=> $id,
				'email'		=> $email,
				'name'		=> $name,
				'img'		=> $img,
				'role'		=> $role,
				'logged_in'	=> TRUE
			);
			$this->session->set_userdata($sesdata);
			if ($role === '1') {
				redirect('sa/dashboard');
			} elseif ($role === '2') {
				redirect('a/dashboard');
			} elseif ($role === '3') {
				redirect('j/dashboard');
			} elseif ($role === '4') {
				redirect('rt/dashboard');
			}
		} else {
		echo "
				<script>
					alert('Access Denied');
					history.go(-1);
				</script>
			";		
		}
		$this->load->view('layout/backend/auth/header');
	  	$this->load->view('auth/login');
		$this->load->view('layout/backend/auth/footer');
	}

	public function login_rt()	
	{
		$email 		= $this->input->post('email', TRUE);
		$password	= $this->input->post('password', TRUE);
		$result		= $this->M_Auth->check_rt($email, $password);
		if($result->num_rows() > 0)
		{
			$data		= $result->row_array();
			$id			= $data['id'];
			$email		= $data['email'];
			$name		= $data['name'];
			$password	= $data['password'];
			$img		= $data['img'];
			$role		= $data['role'];
			$level		= $data['level'];
			$sesdata	= array(
				'id'		=> $id,
				'email'		=> $email,
				'name'		=> $name,
				'img'		=> $img,
				'role'		=> $role,
				'level'		=> $level,
				'password'	=> $password,
				'logged_in'	=> TRUE
			);
			$this->session->set_userdata($sesdata);
			if ($role === '1') {
				redirect('sa/dashboard');
			} elseif ($role === '2') {
				redirect('a/dashboard');
			} elseif ($role === '3') {
				redirect('j/dashboard');
			} elseif ($role === '4') {
				redirect('rt/dashboard');
			}
		} else {
			echo "
				<script>
					alert('Access Denied');
					history.go(-1);
				</script>
			";		
		}
		$this->load->view('layout/backend/auth/header');
	  	$this->load->view('auth/login_rt');
	  	$this->load->view('auth/login');
		$this->load->view('layout/backend/auth/footer');
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect('auth');
	}
}


/* End of file Auth.php */
/* Location: ./application/controllers/Auth.php */
