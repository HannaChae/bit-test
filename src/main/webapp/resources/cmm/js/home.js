'use strict'
var cmm = cmm || {}
cmm.joinPage = demo => {
		
			location.href = `mem/join`
		}
	
cmm.loginPage = demo => {
		$(`#loginPage-btn`).click( e=> {
			location.href = `mem/login`
		})
	}

