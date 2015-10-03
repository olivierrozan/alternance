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

(function( factory ) {
	if ( typeof define === "function" && define.amd ) {

		// AMD. Register as an anonymous module.
		define([ "../widgets/datepicker" ], factory );
	} else {

		// Browser globals
		factory( jQuery.datepicker );
	}
}(function( datepicker ) {

datepicker.regional['fr'] = {
	closeText: 'Fermer',
	prevText: 'Précédent',
	nextText: 'Suivant',
	currentText: 'Aujourd\'hui',
	monthNames: ['janvier', 'février', 'mars', 'avril', 'mai', 'juin',
		'juillet', 'août', 'septembre', 'octobre', 'novembre', 'décembre'],
	monthNamesShort: ['janv.', 'févr.', 'mars', 'avr.', 'mai', 'juin',
		'juil.', 'août', 'sept.', 'oct.', 'nov.', 'déc.'],
	dayNames: ['dimanche', 'lundi', 'mardi', 'mercredi', 'jeudi', 'vendredi', 'samedi'],
	dayNamesShort: ['dim.', 'lun.', 'mar.', 'mer.', 'jeu.', 'ven.', 'sam.'],
	dayNamesMin: ['D','L','M','M','J','V','S'],
	weekHeader: 'Sem.',
	dateFormat: 'dd/mm/yy',
	firstDay: 1,
	isRTL: false,
	showMonthAfterYear: false,
	yearSuffix: ''};
datepicker.setDefaults(datepicker.regional['fr']);

return datepicker.regional['fr'];

}));
