/**
 * Created by skiff on 17.04.14.
 */

$(document).ready(function(){

    $(".mailback, .mailfront, .letter").css('right','-150px').rotate({angle: 90});

    $(".joinus").mouseenter(function(){
        $(".mailback, .mailfront").animate({right: "+=150"}, 500);
        $(".letter").animate({right: "+=150"}, 1000, function(){
            $(".mailback, .mailfront, .letter").rotate({animateTo: 0}, 500);
        });
    }).mouseleave(function(){
            $(".mailback, .mailfront, .letter").stop(1, 1).hide(500).animate({right: "-=150"}, 100).rotate({angle: 90});
            $(".mailback, .mailfront, .letter").show(100);
        });

    $("#menu_nav ul li a, #menu_nav_sec ul li a, .top_button_sec a, .joinus a").click(function(){
        var selected = $(this).attr('href');
        $.scrollTo(selected, 500);
        return false;
    });


    $(function(){
        var
            nav_but = $(".nav_button"), menu_line = $("#menu_nav");
        nav_but.toggle(
            function(){
                nav_but.rotate({animateTo: -90, duration: 1000});
                menu_line.hide(1000);
                return false;
            }, function(){
                nav_but.rotate({animateTo: 0, duration: 1000});
                menu_line.show(1000);
                return false;
            }
        );
    });

    var secondary_nav = $("#sec_nav");

    $(window).scroll(function(){
        if ($(this).scrollTop() > 120){
            secondary_nav.show(1000);
        }
        if ($(this).scrollTop() <= 120){
            secondary_nav.hide();
        }
    });

    $(".katerina, .nikita, .irina, .julia").mouseenter(function(){
        $(this).children('span').fadeIn(200);
        $(this).addClass("team_bg");
    }).mouseleave(function(){
            $(this).children('span').fadeOut(200);
            $(this).removeClass("team_bg");
        });

    $(function(){
        $("#file_upload").click(function(){
            $("#file_upload").change(function(){
                var uploaded = $("#file_upload"), upfile = $(".input_upload");
                if(uploaded == 0){
                    upfile.css('backgroundImage','url(images/upload.png)');
                }else{
                    upfile.css('backgroundImage','url(images/uploaded.png)');
                };
            });
        });
    });

    //script for service

    $(function(){
        var yourImage = $(".your_image"), yourAmusement = $(".your_amusement"), yourComfort = $(".your_comfort"), yourProductivity = $(".your_productivity"), yourImageCont = $(".your_image_cont"), yourAmusementCont = $(".your_amusement_cont"), yourComfortCont = $(".your_comfort_cont"), yourProductivityCont = $(".your_productivity_cont");

        yourImage.click(function(){
            yourImageCont.fadeIn(800), yourAmusementCont.fadeOut(0), yourComfortCont.fadeOut(0), yourProductivityCont.fadeOut(0); return false;
        });

        yourAmusement.click(function(){
            yourAmusementCont.fadeIn(800), yourImageCont.fadeOut(0), yourComfortCont.fadeOut(0), yourProductivityCont.fadeOut(0); return false;
        });

        yourComfort.click(function(){
            yourComfortCont.fadeIn(800), yourImageCont.fadeOut(0), yourAmusementCont.fadeOut(0), yourProductivityCont.fadeOut(0); return false;
        });

        yourProductivity.click(function(){
            yourProductivityCont.fadeIn(800), yourImageCont.fadeOut(0), yourAmusementCont.fadeOut(0), yourComfortCont.fadeOut(0); return false;
        });

    });

    $(function(){
        var yourImage = $(".your_image"), yourAmusement = $(".your_amusement"), yourComfort = $(".your_comfort"), yourProductivity = $(".your_productivity");
        yourAmusement.click(function(){
            $(".li2").addClass("lin_grad"), $(".li1").removeClass("lin_grad"), $(".li3").removeClass("lin_grad"), $(".li4").removeClass("lin_grad");
        });
        yourImage.click(function(){
            $(".li1").addClass("lin_grad"), $(".li2").removeClass("lin_grad"), $(".li3").removeClass("lin_grad"), $(".li4").removeClass("lin_grad");
        });
        yourComfort.click(function(){
            $(".li3").addClass("lin_grad"), $(".li1").removeClass("lin_grad"), $(".li2").removeClass("lin_grad"), $(".li4").removeClass("lin_grad");
        });
        yourProductivity.click(function(){
            $(".li4").addClass("lin_grad"), $(".li1").removeClass("lin_grad"), $(".li3").removeClass("lin_grad"), $(".li2").removeClass("lin_grad");
        });
    });

    $(function(){
        var yourImage = $(".your_image"), yourAmusement = $(".your_amusement"), yourComfort = $(".your_comfort"), yourProductivity = $(".your_productivity");
        yourAmusement.click(function(){
            yourImage.removeClass("service_normal service_active"), yourAmusement.removeClass("service_normal service_active"), yourComfort.removeClass("service_normal service_active"), yourProductivity.removeClass("service_normal service_active"), yourImage.addClass("service_normal"), yourAmusement.addClass("service_active"), yourComfort.addClass("service_normal"), yourProductivity.addClass("service_normal");
        });
        yourImage.click(function(){
            yourImage.removeClass("service_normal service_active"), yourAmusement.removeClass("service_normal service_active"), yourComfort.removeClass("service_normal service_active"), yourProductivity.removeClass("service_normal service_active"), yourImage.addClass("service_active"), yourAmusement.addClass("service_normal"), yourComfort.addClass("service_normal"), yourProductivity.addClass("service_normal");
        });
        yourComfort.click(function(){
            yourImage.removeClass("service_normal service_active"), yourAmusement.removeClass("service_normal service_active"), yourComfort.removeClass("service_normal service_active"), yourProductivity.removeClass("service_normal service_active"), yourImage.addClass("service_normal"), yourAmusement.addClass("service_normal"), yourComfort.addClass("service_active"), yourProductivity.addClass("service_normal");
        });
        yourProductivity.click(function(){
            yourImage.removeClass("service_normal service_active"), yourAmusement.removeClass("service_normal service_active"), yourComfort.removeClass("service_normal service_active"), yourProductivity.removeClass("service_normal service_active"), yourImage.addClass("service_normal"), yourAmusement.addClass("service_normal"), yourComfort.addClass("service_normal"), yourProductivity.addClass("service_active");
        });
    });

});
