////////////  САЙТ-ВИЗИТКА  //////////////

function podschet1(){	
	$('label[for="site_vizitka_gotoviy"]').on('click', function(){
		$('#site_vizitka_mini').prop("checked", 1);
	});
	$('label[for="site_vizitka_individualniy"]').on('click', function(){
		$('#site_vizitka_rashirenniy').prop("checked", 1);
	});
	var cena = 0;
	var skidka = 0;
	if ($('#site_vizitka_gotoviy').prop("checked")){
		$('#site_vizitka_mini').prop("disabled", 0); $('#site_vizitka_mini').removeClass("blocked"); 
		$('#site_vizitka_standart').prop("disabled", 0); $('#site_vizitka_standart').removeClass("blocked");
	}
	if ($('#site_vizitka_individualniy').prop("checked")){
		$('#site_vizitka_mini').prop("disabled", 1); $('#site_vizitka_mini').addClass("blocked"); 
		$('#site_vizitka_standart').prop("disabled", 1); $('#site_vizitka_standart').addClass("blocked");
	}
	
	
	if ($('#site_vizitka_razrabotka_logotipa').prop("checked")) 				{cena += 4990;}				   	//разработка логотипа
	if ($('#site_vizitka_razrabotka_bannerov').prop("checked") && 
		($('#site_vizitka_k').val() == 1 || 
		$('#site_vizitka_k').val() == 2)) 										{cena += 690 * $('#site_vizitka_k').val();} //разработка баннеров (1,2 шт)
	if ($('#site_vizitka_razrabotka_bannerov').prop("checked") && 
		$('#site_vizitka_k').val() > 3 ) 										{cena += 590 * $('#site_vizitka_k').val();}	//разработка баннеров (от 3 шт)
	if ($('#site_vizitka_gotoviy').prop("checked") &&  
		$('#site_vizitka_mini').prop("checked")) 								{cena += 2390; skidka = 50;		//готовый мини
																				$('#site_vizitka_gotoviy_mini_dop').removeClass("hidden");
																				$('#site_vizitka_gotoviy_standart_dop').addClass("hidden");
																				$('#site_vizitka_gotoviy_rashireniy_dop').addClass("hidden");
																				$('#site_vizitka_individualniy_rashireniy_dop').addClass("hidden");
	}
	if ($('#site_vizitka_gotoviy').prop("checked") &&  
		$('#site_vizitka_standart').prop("checked")) 							{cena += 4450; skidka = 50;		//готовый стандарт
																				$('#site_vizitka_gotoviy_mini_dop').addClass("hidden");
																				$('#site_vizitka_gotoviy_standart_dop').removeClass("hidden");
																				$('#site_vizitka_gotoviy_rashireniy_dop').addClass("hidden");
																				$('#site_vizitka_individualniy_rashireniy_dop').addClass("hidden");
	}
	if ($('#site_vizitka_gotoviy').prop("checked") &&  
		$('#site_vizitka_rashirenniy').prop("checked")) 						{cena += 9990; skidka = 50;		//готовый расширенный
																				$('#site_vizitka_gotoviy_mini_dop').addClass("hidden");
																				$('#site_vizitka_gotoviy_standart_dop').addClass("hidden");
																				$('#site_vizitka_gotoviy_rashireniy_dop').removeClass("hidden");
																				$('#site_vizitka_individualniy_rashireniy_dop').addClass("hidden");
	}
	if ($('#site_vizitka_individualniy').prop("checked") &&  
		$('#site_vizitka_rashirenniy').prop("checked")) 						{cena += 33900; skidka = 20;	//индивидуальный расширенный
																				$('#site_vizitka_gotoviy_mini_dop').addClass("hidden");
																				$('#site_vizitka_gotoviy_standart_dop').addClass("hidden");
																				$('#site_vizitka_gotoviy_rashireniy_dop').addClass("hidden");
																				$('#site_vizitka_individualniy_rashireniy_dop').removeClass("hidden");
	}
	if ($('#site_vizitka_copyright').prop("checked"))							{cena += 390 * $('#site_vizitka_k2').val();}	//копирайтинг
	$('#site_vizitka_skidka').text(skidka);
	if ($('#site_vizitka_checkbox_skidka').prop("checked") == 0)				{skidka = 0;}
	skidka = cena * skidka / 100;
	cena -= Math.round(skidka);
	cena = Number.prototype.toFixed.call(parseFloat(cena) || 0, 0).replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1 ");
	$('#site_vizitka_cena').text(cena);

}

////////////  ИНТЕРНЕТ-МАГАЗИН  //////////////
	
function podschet2(){	
	$('label[for="internet-magazin_gotoviy"]').on('click', function(){
		 $('#internet-magazin_katalog_bez_korzini').prop("checked", 1);
	});
	$('label[for="internet-magazin_individualniy"]').on('click', function(){
		$('#internet-magazin_katalog_bez_korzini').prop("checked", 0);
		$('#internet-magazin_katalog_s_korzinoy').prop("checked", 0);
	});
	var cena = 0;
	var skidka = 0;

	if ($('#internet-magazin_gotoviy').prop("checked")){ 
		$('#internet-magazin_katalog_s_korzinoy').prop("disabled", 0); $('#internet-magazin_katalog_s_korzinoy').removeClass("blocked");
		$('#internet-magazin_katalog_bez_korzini').prop("disabled", 0); $('#internet-magazin_katalog_bez_korzini').removeClass("blocked");
	}

	if ($('#internet-magazin_individualniy').prop("checked")){
		$('#internet-magazin_katalog_bez_korzini').prop("disabled", 1); $('#internet-magazin_katalog_bez_korzini').addClass("blocked"); 
		$('#internet-magazin_katalog_s_korzinoy').prop("disabled", 1); $('#internet-magazin_katalog_s_korzinoy').addClass("blocked"); 
	}
	if ($('#internet-magazin_razrabotka_logotipa').prop("checked")) 			{cena += 4990;}				   	//разработка логотипа
	if ($('#internet-magazin_razrabotka_bannerov').prop("checked") && 
		($('#internet-magazin_k').val() == 1 || 
		$('#internet-magazin_k').val() == 2)) 									{cena += 690 * $('#internet-magazin_k').val();} 	//разработка баннеров (1,2 шт)
	if ($('#internet-magazin_razrabotka_bannerov').prop("checked") && 
		$('#internet-magazin_k').val() > 3 ) 									{cena += 590 * $('#internet-magazin_k').val();}	//разработка баннеров (от 3 шт)
	if ($('#internet-magazin_gotoviy').prop("checked") &&
		$('#internet-magazin_katalog_bez_korzini').prop("checked"))				{cena += 14950; skidka = 30; 	//готовый каталог без корзины
																				$('#internet-magazin_gotoviy_katalog_bez_korzini_dop').removeClass("hidden");
																				$('#internet-magazin_gotoviy_katalog_s_korzinoy_dop').addClass("hidden");
																				$('#internet-magazin_individualniy_dop').addClass("hidden");
	}
	if ($('#internet-magazin_gotoviy').prop("checked") &&
		$('#internet-magazin_katalog_s_korzinoy').prop("checked"))				{cena += 19990; skidka = 30; 	//готовый каталог с корзиной
																				$('#internet-magazin_gotoviy_katalog_bez_korzini_dop').addClass("hidden");
																				$('#internet-magazin_gotoviy_katalog_s_korzinoy_dop').removeClass("hidden");
																				$('#internet-magazin_individualniy_dop').addClass("hidden");
	}
	if ($('#internet-magazin_individualniy').prop("checked")) 					{cena += 51950; skidka = 20; 	//индивидуальный
																				$('#internet-magazin_gotoviy_katalog_bez_korzini_dop').addClass("hidden");
																				$('#internet-magazin_gotoviy_katalog_s_korzinoy_dop').addClass("hidden");
																				$('#internet-magazin_individualniy_dop').removeClass("hidden");
	}
	if ($('#internet-magazin_copyright').prop("checked"))						{cena += 390 * $('#internet-magazin_k2').val();}	//копирайтинг
	$('#internet-magazin_skidka').text(skidka);
	if ($('#internet-magazin_checkbox_skidka').prop("checked") == 0)			{skidka = 0}
	skidka = cena * skidka / 100;
	cena -= Math.round(skidka);
	cena = Number.prototype.toFixed.call(parseFloat(cena) || 0, 0).replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1 ");
	$('#internet-magazin_cena').text(cena);
}

////////////  КОРПОРАТИВНЫЙ САЙТ  //////////////

function podschet3(){
	var cena = 0;
	var skidka = 0;
	if ($('#korparativniy-site_gotoviy').prop("checked")){
		$('#korparativniy-site_standart').prop("disabled", 0); $('#korparativniy-site_standart').removeClass("blocked"); $('#korparativniy-site_standart').prop("checked", 1);
		$('#korparativniy-site_rashireniy').prop("disabled", 1); $('#korparativniy-site_rashireniy').addClass("blocked"); $('#korparativniy-site_rashireniy').prop("checked", 0);
	}
	if ($('#korparativniy-site_individualniy').prop("checked")){
		$('#korparativniy-site_standart').prop("disabled", 1); $('#korparativniy-site_standart').addClass("blocked"); $('#korparativniy-site_standart').prop("checked", 0);
		$('#korparativniy-site_rashireniy').prop("disabled", 0); $('#korparativniy-site_rashireniy').removeClass("blocked"); $('#korparativniy-site_rashireniy').prop("checked", 1);
		}
	if ($('#korparativniy-site_razrabotka_logotipa').prop("checked")) 			{cena += 4990;}				   	//разработка логотипа
	if ($('#korparativniy-site_razrabotka_bannerov').prop("checked") && 
		($('#korparativniy-site_k').val() == 1 || 
		$('#korparativniy-site_k').val() == 2)) 								{cena += 690 * $('#korparativniy-site_k').val();} 	//разработка баннеров (1,2 шт)
	if ($('#korparativniy-site_razrabotka_bannerov').prop("checked") && 
		$('#korparativniy-site_k').val() > 3 ) 									{cena += 590 * $('#korparativniy-site_k').val();}	//разработка баннеров (от 3 шт)
	if ($('#korparativniy-site_gotoviy').prop("checked") &&
		$('#korparativniy-site_standart').prop("checked"))						{cena += 11950; skidka = 30; 	//готовый стандарт
																				$('#korparativniy-site_gotoviy_standart_dop').removeClass("hidden");
																				$('#korparativniy-site_individualniy_dop').addClass("hidden");
																				$('.korparativniy-site_dizayn').text("готовый"); $('.korparativniy-site_kompl').text("/ стандарт");
	}
	if ($('#korparativniy-site_individualniy').prop("checked") &&
		$('#korparativniy-site_rashireniy').prop("checked"))					{cena += 45300; skidka = 20; 	//индивидуальный расширенный
																				$('#korparativniy-site_gotoviy_standart_dop').addClass("hidden");
																				$('#korparativniy-site_individualniy_dop').removeClass("hidden");
	}
	if ($('#korparativniy-site_copyright').prop("checked"))						{cena += 390 * $('#korparativniy-site_k2').val();}	//копирайтинг
	$('#korparativniy-site_skidka').text(skidka);
	if ($('#korparativniy-site_checkbox_skidka').prop("checked") == 0)			{skidka = 0}
	skidka = cena * skidka / 100;
	cena -= Math.round(skidka);
	cena = Number.prototype.toFixed.call(parseFloat(cena) || 0, 0).replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1 ");
	$('#korparativniy-site_cena').text(cena);
}

////////////  LANDING-PAGE  //////////////

function podschet4(){	
	var cena = 0;
	var skidka = 0;
	if ($('#landing-page_gotoviy').prop("checked")) 							{cena += 6950; skidka = 50; 	//готовый
																				$('#landing-page_gotoviy_dop').removeClass("hidden");
																				$('#landing-page_individualniy_dop').addClass("hidden");
	}
	if ($('#landing-page_individualniy').prop("checked")) 						{cena += 24950; skidka = 20;	//индивидуальный
																				$('#landing-page_gotoviy_dop').addClass("hidden");
																				$('#landing-page_individualniy_dop').removeClass("hidden");
	}
	
	
	if ($('#landing-page_razrabotka_logotipa').prop("checked")) 				{cena += 4990;}				   	//разработка логотипа
	if ($('#landing-page_razrabotka_bannerov').prop("checked") && 
		($('#landing-page_k').val() == 1 || 
		$('#landing-page_k').val() == 2)) 										{cena += 690 * $('#landing-page_k').val();} //разработка баннеров (1,2 шт)
	if ($('#landing-page_razrabotka_bannerov').prop("checked") && 
		$('#landing-page_k').val() > 3 ) 										{cena += 590 * $('#landing-page_k').val();}	//разработка баннеров (от 3 шт)
	$('#landing-page_skidka').text(skidka);
	if ($('#landing-page_checkbox_skidka').prop("checked") == 0)				{skidka = 0}	
	skidka = cena * skidka / 100;
	cena -= Math.round(skidka);
	cena = Number.prototype.toFixed.call(parseFloat(cena) || 0, 0).replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1 ");
	$('#landing-page_cena').text(cena);
}
function podschet(){
	if ($('form[name="site_vizitka"]').length == 1){podschet1();}
	if ($('form[name="internet-magazin"]').length == 1){podschet2();}
	if ($('form[name="korparativniy-site"]').length == 1){podschet3();}
	if ($('form[name="landing-page"]').length == 1){podschet4();}
}

$(document).ready(podschet);
$('form[name="site_vizitka"] *').on('click', podschet1);
$('form[name="internet-magazin"] *').on('click', podschet2);
$('form[name="korparativniy-site"] *').on('click', podschet3);
$('form[name="landing-page"] *').on('click', podschet4);