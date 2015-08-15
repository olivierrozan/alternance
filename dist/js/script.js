$(function(){
	/* COLLAPSE */
	$("#add").on("show.bs.collapse", function(){
		$('#a').removeClass('glyphicon-plus');
		$('#a').addClass('glyphicon-minus');
	});
	
	$("#add").on("hide.bs.collapse", function(){
		$('#a').removeClass('glyphicon-minus');
		$('#a').addClass('glyphicon-plus');
	});
	
	$("#add2").on("show.bs.collapse", function(){
		$('#td').removeClass('glyphicon-plus');
		$('#td').addClass('glyphicon-minus');
	});
	
	$("#add2").on("hide.bs.collapse", function(){
		$('#td').removeClass('glyphicon-minus');
		$('#td').addClass('glyphicon-plus');
	});
	
	couleur();
	
	/* TRI */
	var toggleid = false;
	var togglenom = false;
	var toggleadresse = false;
	var toggleposte = false;
	var toggleetat = false;
	var toggledate = false;
	var nomCol = '';
	
	$("#triid").on("click", function(e){
		toggleid = !toggleid;
		nomCol = 'id';
		
		if (!toggleid) {
			$('#col_id').removeClass('glyphicon-chevron-up');
			$('#col_id').addClass('glyphicon-chevron-down');
		} else {
			$('#col_id').removeClass('glyphicon-chevron-down');
			$('#col_id').addClass('glyphicon-chevron-up');
		}
		
		e.preventDefault();
        e.stopPropagation();
		
		$.post('tri.php', { triAjax: toggleid, nom: 'id' }, retour, 'json');
	});
	
	$("#trinom").on("click", function(e){
		togglenom = !togglenom;
		nomCol = 'nom';
		
		if (!togglenom) {
			$('#col_nom').removeClass('glyphicon-chevron-up');
			$('#col_nom').addClass('glyphicon-chevron-down');
		} else {
			$('#col_nom').removeClass('glyphicon-chevron-down');
			$('#col_nom').addClass('glyphicon-chevron-up');
		}
		
		e.preventDefault();
        e.stopPropagation();
		
		$.post('tri.php', { triAjax: togglenom, nom: 'nom' }, retour, 'json');
	});
	
	$("#triadresse").on("click", function(e){
		toggleadresse = !toggleadresse;
		nomCol = 'adresse';
		
		if (!toggleadresse) {
			$('#col_adr').removeClass('glyphicon-chevron-up');
			$('#col_adr').addClass('glyphicon-chevron-down');
		} else {
			$('#col_adr').removeClass('glyphicon-chevron-down');
			$('#col_adr').addClass('glyphicon-chevron-up');
		}
		
		e.preventDefault();
        e.stopPropagation();
		
		$.post('tri.php', { triAjax: toggleadresse, nom: 'adresse' }, retour, 'json');
	});
	
	$("#triposte").on("click", function(e){
		toggleposte = !toggleposte;
		nomCol = 'poste';
		
		if (!toggleposte) {
			$('#col_poste').removeClass('glyphicon-chevron-up');
			$('#col_poste').addClass('glyphicon-chevron-down');
		} else {
			$('#col_poste').removeClass('glyphicon-chevron-down');
			$('#col_poste').addClass('glyphicon-chevron-up');
		}
		
		e.preventDefault();
        e.stopPropagation();
		
		$.post('tri.php', { triAjax: toggleposte, nom: 'poste' }, retour, 'json');
	});
	
	$("#trietat").on("click", function(e){
		toggleetat = !toggleetat;
		nomCol = 'etat';
		
		if (!toggleetat) {
			$('#col_etat').removeClass('glyphicon-chevron-up');
			$('#col_etat').addClass('glyphicon-chevron-down');
		} else {
			$('#col_etat').removeClass('glyphicon-chevron-down');
			$('#col_etat').addClass('glyphicon-chevron-up');
		}
		
		e.preventDefault();
        e.stopPropagation();
		
		$.post('tri.php', { triAjax: toggleetat, nom: 'etat' }, retour, 'json');
	});
	
	$("#tridate").on("click", function(e){
		toggledate = !toggledate;
		nomCol = 'date';
		
		if (!toggledate) {
			$('#col_date').removeClass('glyphicon-chevron-up');
			$('#col_date').addClass('glyphicon-chevron-down');
		} else {
			$('#col_date').removeClass('glyphicon-chevron-down');
			$('#col_date').addClass('glyphicon-chevron-up');
		}
		
		e.preventDefault();
        e.stopPropagation();
		
		$.post('tri.php', { triAjax: toggledate, nom: 'date' }, retour, 'json');
	});
	
	function retour(sheet)
	{
		$('location').attr('href', 'index.php');
		$('.trs').empty();
		
		var html = '';
		
		for (var i = 0; i < sheet.length; i++) {
			html += "<tr class='trs'>";
			html += "<td>" + sheet[i]['id'] + "</td>";
			html += "<td>" + sheet[i]['nom'] + "</td>";
			html += "<td>" + sheet[i]['adresse'] + "</td>";
			html += "<td>" + sheet[i]['poste'] + "</td>";
			html += "<td class='tds'>" + sheet[i]['etat'] + "</td>";
			html += "<td>" + sheet[i]['date'] + "</td>";
			html += "<td>" + sheet[i]['commentaires'] + "</td>";
			html += "<td>";
			html += "<a class='btn btn-sm btn-warning' data-toggle='modal' data-target=" + sheet[i]['id'] + ">";
			html += "<span class='glyphicon glyphicon-pencil'></span>";
			html += "Modifier";
			html += "</a>";
			html += "</td>";
			html += "<td>";
			html += "<a class='btn btn-sm btn-danger' href=supprimerAjax.php?id=" + sheet[i]['id'] + ">";
			html += "<span class='glyphicon glyphicon-remove' aria-hidden='true'></span>";
			html += "Supprimer";
			html += "</a>";
			html += "</td>";
			html += "</tr>";	
		}
		
		$(".table").append(html);
		
		/* COULEUR ETAT */
		couleur();
	}
	
	function couleur()
	{
		for (var i = 0; i < $('.tds').length; i++) {
			var row = $('.tds').eq(i).parent("tr");
			
			if ($('.tds').eq(i).text() == 'Refusé') {
				row.css('color', 'red').css('font-weight', 'bold');
			} else if ($('.tds').eq(i).text() == 'Entretien') {
				row.css('color', 'blue').css('font-weight', 'bold');
			}
		}
	}
});

