<?php
require_once('../database/Database.php');
require_once('../interface/iBoarder.php');
class Boarder extends Database implements iBoarder {
	public function __construct()
	{
		parent:: __construct();
	}

	public function addBoarder($fN, $mN, $lN, $telNum = '', $phoneNum, $homeAddress)
	{
		try {
			$startedAt = date('Y-m-d');
			$sql = 'INSERT INTO boarder(boarder_firstName, boarder_middleName, boarder_lastName, boarder_homeAddress, boarder_telephoneNum, boarder_phoneNum, boarder_started)
					VALUES(?,?,?,?,?,?,?);
			';
			$this->insertRow($sql, [$fN, $mN, $lN, $homeAddress, $telNum, $phoneNum, $startedAt]);
			echo 'Student Added Successfully';
		} catch (Exception $e) {
			throw new Exception($e->getMessage());	
		}
	}

	public function deleteBoarder($id)
	{
		try {
			$sql = 'DELETE FROM boarder 
					WHERE boarder_id = ?
			';
			$this->deleteRow($sql, [$id]);
			echo 'Student Deleted Successfully';
		} catch (Exception $e) {
			return new Exception($e->getMessage());
		}			
	}

	public function updateBoarder($id, $fN, $mN, $lN, $telNum = '', $phoneNum, $homeAddress)
	{
		try {
			$sql = 'UPDATE boarder
					SET	
					boarder_firstName = ?,
					boarder_middleName = ?,
					boarder_lastName = ?,
					boarder_homeAddress = ?,
					boarder_telephoneNum = ?,
					boarder_phoneNum = ? 
					WHERE boarder_id = ?
			';	
			$this->updateRow($sql, [$fN, $mN, $lN, $homeAddress, $telNum, $phoneNum, $id]);	
			echo 'Student Updated Successfully';
		} catch (Exception $e) {
			return new Exception($e->getMessage());
		}
	}

	public function showAllBoarders()
	{
		try {
			$sql = "SELECT * FROM boarder";
			return $this->getRows($sql);			
		} catch (Exception $e) {
			return new Exception($e->getMessage());
		}
	}

	public function getBoarder($id)
	{
		try {
			$sql = 'SELECT * FROM boarder
					WHERE boarder_id = ?
			';
			return $this->getRow($sql, [$id]);			
		} catch (Exception $e) {
			return  new Exception($e->getMessage());
		}
	}

	public function closeConnection(){
		$this->Disconnect();
	}
	

}

/* End of file boarder.php */
/* Location: .//D/xampp/htdocs/rentaldormitory/class/boarder.php */
