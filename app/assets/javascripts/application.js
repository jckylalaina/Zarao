// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require popper
//= require js/Chart.min
//= require js/dashboard-page-scripts
//= require js/jquery-migrate.min
//= require js/jquery
//= require js/jquery.min
//= require js/jquery.mCustomScrollbar.concat.min
//= require js/main
//= require js/popper.min
//= require js/test


$(function(){
	//affiche creation taches
	$('#create_task_link').click(function(){
        $('#create_task_form').fadeIn()
	})
	//boutton fermer x
	$('.close').click(function(){
		$(this).parent().parent().parent().hide()
	})

	//tabulation groupe des tache
	$('.pool').click(function(){
		$('.pool').css("border","none")
		$(this).css("border","solid white 2px")
       	let id = Number($(this).attr("id"))
        $.ajax({
        url : "/req/index",
        type : "get",
        data : { data_value: JSON.stringify(id) }
    });
		$('.under').hide()
		//afichage du cuurent groupe
		$('#current').html(`${$(this).val()}`)
		//affichage du table tbody du cureent pool
		$(`tbody#${$(this).attr("id")}.under`).show()
   


	})
	//affichage des tache
	$('.task_link').click(function(){
		
		$('#task_id').val($(this).attr('value'))
		$('.dl').hide()
		$('.list').prepend($(`dl#${$(this).attr('value')}`))
		$(`dl.dl#${$(this).attr('value')}`).show()
		let title = $(this).text()
		let description = $(this).prev().text()
		let category = $(this).next().text()
	    let start_date = $(this).next().next().text()
	    let limite_date = $(this).next().next().next().text()
	    $('#show_title').html(`${title}<br>(${category})`)
	    $('#show_description').html(`${description}`)
	    $('#show_start_date').html(`${start_date}`)
	    $('#show_limite_date').html(`${limite_date}`)		
	    $('#show_task').fadeIn()
	})
	//ajouter note
		$('.coms').click(function(){
	let descri = $(this).prev().prev().val()
	console.log(descri)
	$('.dl').eq(0).append(
		  `<dt class='user'></dt><dd>${descri}</dd>`)
	
 })
	//note
	$('.show_note').click(function(){
		$('#note_task').show()
	})
	//creer new espace de trvail page d'acceuil
	$('.create_new_space').click(function(){
        $('#create_new_space').fadeIn()
	})

	//finish
	$('.finished').click(function(){
        
	})

	//tape sur entrer
	$('.form-pool').click(function(){
		$('.enter').fadeIn()
	setTimeout(function(){ $('.enter').fadeOut(); }, 2300)
	})
	
	
})