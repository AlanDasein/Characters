"use strict";

$(document).ready(function() {

    var modules = $(".content").attr("dt-modules"), dom = {page: $("body")};

    /**************************************/
    /*************** MODAL ****************/
    /**************************************/

    if(modules.indexOf("#modal#") >= 0) {

        dom.win = $("#modal");

        var showModal = function(msg, btn, callback) {
            var modal_body = dom.win.find("div.modal-body"),
                modal_footer = dom.win.find("div.modal-footer"),
                labels = modal_footer.attr("dt-btn").split(","),
                buttons = {
                    "dismiss": ("<button type='button' class='btn btn-warning' data-dismiss='modal'>" + labels[0] + "</button>"),
                    "continue": ("<button type='button' class='btn btn-default' id='modal-button-continue'>" + labels[1] + "</button>")
                },
                trigger = '',
                callback = callback || 0;
            modal_body.html(msg);
            modal_footer.html("");
            $.each(btn, function(i) {$(buttons[btn[i]]).appendTo(modal_footer);});
            if(typeof callback === "function") {
                trigger = $("#modal-button-continue");
                trigger.on("click", function() {callback();});
            }
            dom.win.modal("show");
        };

    }

    /*************************************/
    /*************** AJAX ****************/
    /*************************************/

    if(modules.indexOf("#ajax#") >= 0) {

        var callAjax = function(target, serie, beforeCall, afterCall) {
            return $.ajax({
                beforeSend: function() {if(typeof beforeCall === 'function') beforeCall();},
                type: "POST",
                dataType: "json",
                url: target,
                data: serie
            }).done(function(res) {if(typeof afterCall === 'function') afterCall(res);});
        }, systemBusy = false, ajaxCompleted = false;

    }

    /**************************************/
    /*************** OPTION ***************/
    /**************************************/

    if(modules.indexOf("#option#") >= 0) {

        dom.radio = $(".radiobutton");
        dom.check = $(".checkbutton");

        dom.radio.on("click", function() {
            var items = $(this).parent().find(".radiobutton");
            items.each(function() {$(this).removeClass("text-warning");});
            $(this).addClass("text-warning");
        });

        dom.check.on("click", function() {
            var group = $(this).parent().parent(),
                items = {main: group.find(".main"), control: group.find(".control"), slaves: group.find(".slave")},
                active = function() {
                    var aux = items.slaves.filter(function() {return $(this).hasClass("text-warning");});
                    return aux.length;
                },
                switcher = function(param) {
                    param["except"] = param["except"] || "";
                    param["oper"] = param["oper"] || "toggle";
                    $.each(items, function(i) {
                        $.each(items[i], function(j) {
                            if(param["except"].indexOf(i) < 0) eval("items[i].eq(j)." + param["oper"] + "Class(param['cls'])");
                        });
                    });
                }, aux;
            if($(this).hasClass("main") || $(this).hasClass("dismiss")) switcher({cls: "dismiss"});
            if($(this).hasClass("main") || $(this).hasClass("control")) switcher({cls: "text-warning", oper: "remove"});
            if($(this).hasClass("control") || ($(this).hasClass("main") && !$(this).hasClass("dismiss"))) switcher({cls: "text-warning", oper: "add", except: ["slaves"]}); //2
            if($(this).hasClass("slave")) {
                $(this).toggleClass("text-warning");
                aux = active();
                if($(this).hasClass("text-warning") && aux !== items.slaves.length) {
                    switcher({cls: "text-warning", oper: "remove", except: ["slaves"]});
                    switcher({cls: "text-warning", oper: "add", except: ["slaves", "control"]});
                }
                else if(aux === 0 || aux === items.slaves.length) {
                    switcher({cls: "text-warning", oper: "remove", except: ["main"]});
                    switcher({cls: "text-warning", oper: "add", except: ["slaves", "main"]});
                }
            }
        });

    }

    /****************************************/
    /*************** SELECTOR ***************/
    /****************************************/

    if(modules.indexOf("#selector#") >= 0) {

        var manageSelectors = function(elm, oper) {
            var ranges = $.parseJSON(dom.page.attr("dt-settings")),
                group = elm.parent().parent(),
                subgroup = Number(elm.parent().attr("dt-subgroup")),
                labels = group.find("label"),
                values = [Number(labels.eq(0).text()), Number(labels.eq(1).text())],
                oper = oper || "";
            for(var i = 0;i < 2;i++) {
                values[i] = isNaN(values[i]) ? ranges[group.attr("dt-group")][i] : values[i];
                if(oper.length && i === subgroup) values[i] += (oper === "+" ? 1 : -1);
                if(values[i] < ranges[group.attr("dt-group")][0] || values[i] > ranges[group.attr("dt-group")][1]) {
                    values[i] = ranges[group.attr("dt-group")][values[i] < ranges[group.attr("dt-group")][0] ? 0 : 1];
                }
            }
            if(values[0] > values[1] || values[1] < values[0]) values[subgroup] = values[!subgroup];
            labels.each(function(i) {$(this).text(values[i]);});
            return values;
        };

        dom.select = $(".buttonselect");

        dom.select.on("click", function() {
            var check = $(this).parent().parent().parent().find(".checkbutton");
            check.removeClass("dismiss text-warning").addClass("text-warning");
            manageSelectors($(this), $(this).text());
        });

    }

    /****************************************/
    /*************** EDIT *******************/
    /****************************************/

    if(modules.indexOf("#edit#") >= 0) {

        var valueInspector;

        dom.fields = $("[contenteditable]");
        dom.eraser = $(".close");
        dom.commands = $(".commands .clickable");

        dom.fields.on("keypress", function(e) {return e.which != 13;});

        dom.fields.on("focus", function() {
            valueInspector = $.trim($(this).text());
            if(valueInspector === $(this).attr("dt-empty")) $(this).text("");
            $(this).removeClass("text-warning");
        });

        dom.fields.on("blur", function() {
            if(valueInspector !== $(this).text()) {
                var data = JSON.parse($(this).attr("dt-data")), text = $.trim($(this).text());
                data.value = text;
                callAjax("files/php/controllers/edit.php", data);
                if(text === "") {
                    $(this).text($(this).attr("dt-empty"));
                    $(this).addClass("text-warning");
                }
                else $(this).text(text);
            }
        });

        dom.eraser.on("click", function() {
            var self = $(this),
                callback = function() {
                    var elm = self.parent().parent().parent(), spacer = elm.nextAll(".clearfix");
                    callAjax("files/php/controllers/delete.php", {"id": self.attr("dt-item")});
                    spacer.remove();
                    elm.remove();
                    dom.win.modal("hide");
                },
                msg = $("footer span").eq(4);
            showModal(msg.text(), ["dismiss", "continue"], callback);
        });

        dom.commands.on("click", function() {
            var index = dom.commands.index($(this)), loc = window.location.href.split("?"), msg = $("footer span").eq(4);
            switch(index) {
                case 0: showModal(msg.text(), ["dismiss", "continue"], function() {window.location = loc.join("?").replace("&p=2", "&p=1") + "&reset=1";});break;
                case 1: showModal(msg.text(), ["dismiss", "continue"], function() {window.location = loc.join("?") + "&recover=1"});break;
                case 2: window.open("pdf.php?" + loc[1]);break;
            }
        });

    }

    /*****************************************/
    /*************** FORM ********************/
    /*****************************************/

    if(modules.indexOf("#form#") >= 0) {

        var msg = function(ind) {
                var txt = $("footer span").eq(ind);
                showModal(txt.text(), ["dismiss"]);
            },
            send = function() {
                var form = $("form").eq(0);
                dom.page.addClass("hidden");
                form.submit();
            };

        dom.form = $("form");

        dom.form.on("submit", function(e) {
            var data = {categories: [], values: []}, series = $(this).find(".serie"), go = true, input, extra;
            if(series.length) {
                if(dom.check.length) {
                    dom.check.each(function() {
                        if($(this).hasClass("main")) data.categories.push($(this).hasClass("text-warning"));
                    });
                }
                series.each(function() {
                    var control = $(this).find(".control"), slaves = $(this).find(".slave"), val = [];
                    if(slaves.length) slaves.each(function(i) {if($(this).hasClass("text-warning")) val.push(i);});
                    if(control.length && !val.length) val.push(-1);
                    else {
                        input = $(this).find(".buttonselect").eq(0);
                        if(input.length) val = manageSelectors(input);
                        else if(dom.check.length && !val.length) val.push(-1);
                    }
                    data.values.push(val);
                    if(!val.length) {
                        go = false;
                        return;
                    }
                });
                if(go) {
                    input = $("input[name='data']");
                    input.val(JSON.stringify(data));
                    dom.page.addClass("hidden");
                }
                else {
                    e.preventDefault();
                    msg(1);
                }
            }
            else {
                input = $.trim($("textarea").val());
                if(input.length && !systemBusy) {
                    if(ajaxCompleted) send();
                    else {
                        e.preventDefault();
                        systemBusy = true;
                        input = $(".kaptcha");
                        extra = $("input[name='kaptcha']");
                        callAjax("files/php/controllers/kaptcha.php", {"k": input.attr("dt-ref"), "v": extra.val()}, "", function(res) {
                            if(res) {
                                ajaxCompleted = true;
                                send();
                            }
                            else {
                                msg(3);
                                systemBusy = false;
                            }
                        });
                    }
                }
                else {
                    if(!ajaxCompleted) e.preventDefault();
                    if(!systemBusy) msg(2);
                }
            }
        });

    }

    if(modules.indexOf("#social#") >= 0) {

        dom.social = $("a[role='share']");

        dom.social.on("click", function(e) {
            var title = $("title"),
                url = "http://www.allcrossword.com/Apps/Characters/index.php",
                dir = [
                    "https://www.facebook.com/sharer/sharer.php?u=http://" + url + "&t=" + title.text() + "&v=3",
                    "https://plus.google.com/share?url=http://" + url,
                    "https://twitter.com/intent/tweet?status=" + title.text() + "%20http://" + url + "&related=micropat"
                ],
                win = $(window),
                w = Number($(this).attr("parm-w")),
                h = Number($(this).attr("parm-h")),
                l = Math.round((win.width() - w) / 2),
                t = Math.round((win.height() - h) / 2);
            e.preventDefault();
            (l < 0 || t < 0) ? window.open(dir[dom.social.index($(this))], "_blank") :
            window.open(dir[dom.social.index($(this))], "_blank", "width= " + w + ", height= " + h + ", left=" + l + ", top=" + t);
        });

    }

    dom.page.removeClass("hidden");
    dom.msg = $("footer span").eq(0);
    if(dom.msg.text() !== "") showModal(dom.msg.text(), ["dismiss"]);

});