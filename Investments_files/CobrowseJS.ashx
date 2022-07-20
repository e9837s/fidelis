(function() {/*

 Copyright The Closure Library Authors.
 SPDX-License-Identifier: Apache-2.0
*/
'use strict';/*
 Copyright (c) 2021 Glance Networks, Inc.
*/
var h;window.GLANCE=window.GLANCE||{};window.GLANCE.VERSION="5.3.0.118";window.GLANCE.PATCH="";var m=navigator.userAgent.toLowerCase(),aa=navigator.platform.toLowerCase(),q=m.match(/(edge)[\s\/:]([\w\d\.]+)?/)||m.match(/(opera|ie|firefox|chrome|version)[\s\/:]([\w\d\.]+)?.*?(safari|version[\s\/:]([\w\d\.]+)|$)/)||m.match(/(rv):([\w\d\.]+)/)||[null,"unknown",0];"rv"===q[1]&&(q[1]="ie");
var w={extend:Function.prototype.extend,name:"version"==q[1]?q[3]:q[1],version:"ie"==q[1]&&document.documentMode||parseFloat("opera"==q[1]&&q[4]?q[4]:q[2]),j:{name:m.match(/ip(?:ad|od|hone)/)?"ios":(m.match(/(?:webos|android)/)||aa.match(/mac|win|linux/)||["other"])[0]},F:{J:!!document.evaluate,H:!!window.I,query:!!document.querySelector,json:!!window.JSON},G:{}};
document.documentMode&&window.XDomainRequest?(w.name="ie",w.version=document.documentMode):window.navigator&&navigator.appVersion&&-1!=navigator.appVersion.indexOf("MSIE 7.")&&(w.name="ie",w.version="7");w[w.name]=!0;w[w.name+parseInt(w.version,10)]=!0;w.j[w.j.name]=!0;void 0===h&&(h=function(a){return JSON.stringify(a)});function z(a,b,c){A("addEventListener",window,a,b,c)}function B(a,b,c){var f={};f[b]=c;a.postMessage(f,"*")}
function C(a,b){window.addEventListener("message",function(c){if("string"===typeof c.data)try{var f=JSON.parse(c.data)}catch(y){return!1}else f=c.data;void 0!==f[a]&&b(c.source,f[a])})}window.Sarissa&&Sarissa._SARISSA_IS_IE&&new window.XMLHttpRequest;function D(){this.name="glance_ssn_info";var a=new E,b=a.b.location.hostname;for(a=a.b;""===b&&a.parent!==a;)b=a.parent.location.hostname,a=a.parent;this.domain=ba(b)}D.prototype.g=function(){var a=this.get();return a?JSON.parse(a):null};
D.prototype.get=function(){return this.c()?unescape(document.cookie.replace(new RegExp("(?:^|.*;\\s*)"+escape(this.name).replace(/[\-\.\+\*]/g,"\\$&")+"\\s*\\=\\s*((?:[^;](?!;))*[^;]?).*"),"$1")):null};D.prototype.f=function(){var a=new Date;a.setDate(a.getDate()-1);document.cookie=escape(this.name)+"=; expires="+a.toGMTString()+"; domain="+this.domain+"; path=/"};D.prototype.c=function(){return(new RegExp("(?:^|;\\s*)"+escape(this.name).replace(/[\-\.\+\*]/g,"\\$&")+"\\s*\\=")).test(document.cookie)};
function J(){this.name="glance_ssn_info"}J.prototype.g=function(){if(!this.c())return null;var a=localStorage.getItem(this.name);return JSON.parse(a)};J.prototype.get=function(){return this.c()?localStorage.getItem(this.name):null};J.prototype.f=function(){localStorage.removeItem(this.name);localStorage.removeItem(this.name+"_exp")};J.prototype.c=function(){var a=localStorage.getItem(this.name+"_exp");if(!a)return!1;a=new Date(a);return a<new Date?(this.f(),!1):!0};
function K(){this.a=[new D,new J]}K.prototype.g=function(){return this.a[0].g()||this.a[1].g()};K.prototype.get=function(){return this.a[0].get()||this.a[1].get()};K.prototype.f=function(){this.a[0].f();this.a[1].f()};K.prototype.c=function(){return this.a[0].c()||this.a[1].c()};
function E(){var a=window;this.a=a.document;this.b=a;var b=[["hidden","visibilitychange"],["mozHidden","mozvisibilitychange"],["webkitHidden","webkitvisibilitychange"],["msHidden","msvisibilitychange"],["oHidden","ovisibilitychange"]];for(a=0;a<b.length&&!(b[a][0]in document);a++);}
function ba(a){var b=new RegExp(/^(?:[a-z]{1,5}:\/\/|)([^:\?\/]*)/),c=a.match(/^\d+\.\d+.\d+.\d+$/);b=b.exec(a);if(c)return a;if(null===b||2!==b.length)return"about:"!==a&&M("ERR_DOMAINPARSE: "+a),null;c=b[1].split(".");return 1===c.length?(M("ERR_DOMAINPARSE: "+a),null):2===c.length?c.join("."):3===c.length?c.slice(1).join("."):4>=c[c.length-2].length?c.slice(c.length-3).join("."):c.slice(c.length-2).join(".")}E.prototype.getElementsByTagName=function(a){return A("getElementsByTagName",this.a,a)};
function Q(a,b,c){var f=a.a.createElement("script");c&&f.addEventListener("load",c);f.setAttribute("type","text/javascript");f.setAttribute("charset","UTF-8");for(c=0;c<b.length;c++)f.setAttribute(b[c][0],b[c][1]);a.a.head.appendChild(f)}E.prototype.head=function(){return void 0!==this.a.head?this.a.head:this.getElementsByTagName("head")[0]};
function R(a,b){a.b.addEventListener&&(document.readyState.match(/complete/)?b():(a.b.addEventListener("load",b),a.a.addEventListener("DOMContentLoaded",b,!1)))}
E.prototype.scrollTo=function(a,b,c){if(void 0!==window.pageXOffset)var f={x:Math.round(this.b.pageXOffset),y:Math.round(this.b.pageYOffset)};else if(void 0!==document.documentElement.scrollTop)f={x:this.a.documentElement.scrollLeft,y:this.a.documentElement.scrollTop};else if(void 0!==document.body.scrollLeft)f={x:this.a.body.scrollLeft,y:this.a.body.scrollTop};else throw Error("Can't get page scroll");f[a]=b;a={left:f.x,top:f.y,behavior:c?"smooth":"auto"};w.ie11||w.edge?window.scrollTo(f.x,f.y):
window.scrollTo(a)};E.prototype.addEventListener=function(a,b,c){this.a.addEventListener(a,b,c)};E.prototype.removeEventListener=function(a,b,c){this.a.removeEventListener(a,b,c)};function M(a){window.console&&window.console.log&&(window.GLANCE_COBROWSE?!window.GLANCE_COBROWSE.disableLogging:1)&&window.console.log(a)}function S(a){this.a=a}S.prototype.addEventListener=function(a,b,c){this.a.addEventListener(a,b,c)};S.prototype.removeEventListener=function(a,b,c){this.a.removeEventListener(a,b,c)};
function A(a,b,...c){return S.b&&S.a&&b.nodeType?"#document"===b.nodeName?S.a.document[a].apply(b,c):"#document-fragment"===b.nodeName?S.a.DocumentFragment.prototype[a].apply(b,c):S.a.document.body[a].apply(b,c):S.b&&S.a&&"[object Window]"===b.toString()?S.a.window[a].apply(b,c):b[a].apply(b,c)}function T(a,b,c){a.a.style.left=b+"px";a.a.style.top=c+"px"}
S.prototype.moveTo=function(a,b){function c(){r++<f?(x+=n,g+=F,T(y,Math.floor(x),Math.floor(g)),y.b=window.setTimeout(c,200/f)):T(y,a,b)}var f=10;void 0!==this.b&&window.clearTimeout(this.b);var y=this,x=parseInt(this.a.style.left),g=parseInt(this.a.style.top);isNaN(x)&&(x=-999);isNaN(g)&&(g=-999);var r=0;f=10;var n=(a-x)/f,F=(b-g)/f;0===n&&0===F||c()};function U(){this.listeners=this.a={}}U.prototype.add=function(a,b){this.a[a]=this.a[a]||[];this.a[a].push(b)};function V(a,b){if(void 0!==a){var c=c||Object.keys(a);c.forEach(function(f){void 0!==a[f]&&(b[f]=a[f])})}}function W(a){var b={};if(!a)return b;var c=0;for(a=a.attributes;c<a.length;c++){var f=a[c].nodeName.match(/data-(.*)/);f&&2===f.length&&(b[f[1]]=a[c].nodeValue)}return b}function ca(){var a=window.GLANCE_COBROWSE?window.GLANCE_COBROWSE:{},b=document.getElementById("glance-cobrowse"),c=W(document.getElementById("cobrowsescript"));b=W(b);V(c,a);V(b,a);return a};var da=["5","3","0","118"].slice(0,3).join(".")+"M";
function ea(){this.b=document.getElementById("cobrowsescript")||document.getElementById("glance-cobrowse");if(null!==this.b){var a=ca();V(a,this);var b=/\/\/(.*)\//.exec("string"===typeof this.b.src?this.b.src:a.scriptserver+"/");this.a=b&&2===b.length?b[1]:"www.glancecdn.net/cobrowse";this.a=this.a.replace("/js","");a.cbexperiment&&(this.a=this.a.replace("cobrowse","cbexperiment"));b=(a.oninit||"").split(":");this.l=a.groupid||this.b.getAttribute("groupid");this.C=a.ws||this.b.getAttribute("ws")||
"www.glance.net";this.C.match("\\.glance\\.net$");this.B=a.ui;this.h={i:b[0],D:b[1]};this.A=a.site||this.b.getAttribute("site")||"production";this.s=JSON.parse(a.inputevents||"{}");this.u=a.presence;if(!this.l)throw Error("data-groupid missing");a=a.additionalgroupids||"";this.m=[this.l].concat(a?a.split(","):[]);this.m=this.m.map(function(c){if(!parseInt(c))throw Error("data-groupid invalid: "+c);return parseInt(c)});if(!/staging|production/i.test(this.A))throw Error("data-site invalid");}};function X(){return 0<window.location.href.indexOf("GlanceSession=1")};window.GLANCE=window.GLANCE||{};window.GLANCE.Cobrowse=window.GLANCE.Cobrowse||{};
function Y(){function a(){if(p.h.i){var d=new K;d.g()&&("abandonsession"===p.h.i?d.f():"continuesession"===p.h.i&&p.h.D!==d.g().ssnid&&d.f())}}function b(d){function e(t,G,L){return function(H){H.keyCode===G&&H[t+"Key"]&&(H=L.match(/showButton|toggleButton|showTerms/)?"VisitorUI":"Visitor",x(H,L)||(window.console&&window.console.log&&window.console.log("DEBUG:","inputevent:",L),window.GLANCE.Cobrowse[H][L]()))}}for(var k in d)if(d.hasOwnProperty(k)){var l=k.match(/(ctrl|alt|shift)-(\d*)/);!l||3>l.length||
z("keydown",e(l[1],parseInt(l[2]),d[k]),!0)}}function c(d){function e(k){return function(l){var t=k.match(/showButton|toggleButton|showTerms/)?"VisitorUI":"Visitor";l.stopPropagation();l.preventDefault();x(t,k)||(window.console&&window.console.log&&window.console.log("DEBUG:","button click",t,k),u[t][k]())}}["glance_button","data-glancebutton"].forEach(function(k){for(var l=d.querySelectorAll("["+k+"]"),t=0;l&&t<l.length;t++){var G=l[t].getAttribute(k);"start"===G&&(G="startSession");l[t].addEventListener("click",
e(G))}})}function f(){return u.Visitor}function y(d,e){u[e][d]=function(k){d.match(/showButton|toggleButton|showTerms/)&&"Visitor"==e&&(e="VisitorUI");g(function(){u[e][d](k)},e)}}function x(d,e){if(!r)return!1;window.console&&window.console.log&&window.console.log("DEBUG:","forward event:",d,e);B(window.top,"forwardevent",{namespace:d,funcname:e});return!0}function g(d,e){e=e||"Visitor";if(A("getElementById",n.a,("glance_"+e).toLowerCase()))u[e].loaded?d&&d():d&&M("SCRIPT_NOT_LOADED:"+e);else if(d&&
(Z._onload[e]=d),r||"Visitor"!==e||p.B||g(null,"VisitorUI"),Q(n,[["id",("glance_"+e).toLowerCase()],["src",N+"/GlanceCobrowse"+e+"_"+O+".js"]]),"Visitor"===e)for(e=document.getElementsByTagName("iframe"),d=0;d<e.length;d++)e[d].contentWindow&&B(e[d].contentWindow,"glance_load",{o:!0})}window.GLANCE.runTroubleshooter=function(){Q(n,[["src","https://"+p.a+"/js/Troubleshooter.js"]])};window.GLANCE.checkHTML=function(){Q(n,[["src","https://"+p.a+"/js/HTMLChecker.js"]])};if(window.localStorage&&window.XMLHttpRequest&&
window.atob){if(!window.addEventListener)return null;var r=window.parent!==window,n=new E,F=!1,p=new ea,O=da,u=window.GLANCE.Cobrowse,N="//"+p.a+"/js";r||a();var P=new U,v=p.b;if(u.Loader&&v&&v.getAttribute("data-loaded"))M("ERR_DUP_SCRIPTS");else{v&&v.setAttribute("data-loaded",!0);var Z={load:function(d){g(d)},loadScript:function(d,e){Q(n,[["src",N+"/"+d+"_"+O+".js"]],e)},_eventListeners:P,_onload:{},_origpath:window.location.pathname};C("glance_load",function(d,e){d&&(d!==window.parent&&d.parent!==
window?M("UNTRUSTED_LOAD_MSG"):(e.o&&g(),e.v&&null!==A("getElementById",n.a,"glance_visitor")&&B(d,"glance_load",{o:!0})))});r&&B(window.parent,"glance_load",{v:!0});window.addEventListener("message",function(d){if("string"!==typeof d.data){if(f().loaded)return!0;d.data.glance_invoke&&(d.data.origin=d.origin,g(function(){window.postMessage(d.data,window.location.href)}))}});z("focus",function(){if(f().loaded)return!0;f().inSession()&&g()});u.Visitor={loaded:!1,inSession:function(){return(new K).c()},
addEventListener:function(d,e){P.add(d,e)},removeEventListener:function(d,e){d=P.a[d];void 0!==d&&(e=d.indexOf(e),0<=e&&d.splice(e,1))}};v=["showButton","toggleButton","showTerms","setStyle"];r||(u.VisitorUI={},v.forEach(function(d){y(d,"VisitorUI")}));v=v.concat(["startSession","setStartParams"]);v.forEach(function(d){y(d,"Visitor")});u.Loader=Z;r||X()||!f().inSession()||g();!r&&X()&&g(null,"XDOM");R(n,function(){document.body&&!F&&(F=!0,c(document.body),b(p.s),p.u&&!r&&Q(n,[["src",N+"/GlancePresenceVisitor_"+
O+".js"]]))});C("forwardevent",function(d,e){window.console&&window.console.log&&window.console.log("DEBUG:","received forwarded event:",e);if(d.top!==window)M("UNTRUSTED_KEYEVT");else window.GLANCE.Cobrowse[e.namespace][e.funcname]()})}}else window.console&&window.console.error&&window.console.error("ERR_COBROWSE_NOT_SUPP")}document.getElementById("cobrowsescript")||document.getElementById("glance-cobrowse")?Y():(M("LOADER_PAGE_NOT_READY"),R(new E,Y));}).call(window);
