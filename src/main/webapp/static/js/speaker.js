function OnSendArticle() {
    var result = window.showModalDialog("/Modules/CMS/SendArticle.aspx", document.URL, "dialogHeight: 320px; dialogWidth: 450px;");
}
function OnBack() {
    window.history.back();
}
function OnGoToHead() {
    window.moveTo(0, 0);
}


$(document).ready(function () {

    $(".slidingDiv").hide();
    $(".show_hide").show();

    $('.show_hide').click(function () {
        $(".slidingDiv").slideToggle();
    });

});
var dialogMethod;
function CallWebMethodSuccess(results, context, methodName) {
    switch (methodName) {
        case "AllowWatchArticle":
            {
                CheckUserWatchCallback(results, context, methodName);
            }
            break;
    }
}

function CallWebMethodFailed(results, context, methodName) {
    alert(results._message);
}
// check user login
function getQuerystringNameValue(name) {
    // For example... passing a name parameter of "name1" will return a value of "100", etc.
    // page.htm?name1=100 or page.htm/name1/100
    var articleId;
    var winURL = window.location.href;
    var index = winURL.indexOf(name);
    if (index > -1) {
        winURL = winURL.substr(index, winURL.length);
        var arr = winURL.indexOf("/") > -1 ? winURL.split("/") : winURL.split("=");;
        articleId = arr[1];
    }
    return articleId;
}
function CheckUserWatchArticle() {
    PSCPortal.Services.CMS.AllowWatchArticle(getQuerystringNameValue("ArticleId"), CallWebMethodSuccess);
}
var dialogMethod;
function CheckUserWatchCallback(results, context, methodName) {
    if (!results) {
        dialogMethod = "CheckUserWatchArticle";
        var oWnd = $find("ctl06_ctl01_rwUserLogin");
        oWnd.setSize(380, 180);
        oWnd.setUrl("/Modules/CMS/UserLogin.aspx");
        oWnd.set_title("Login");
        oWnd.show();
    }
}
function RadCheckUserWatchClose(sender, args) {
    switch (dialogMethod) {
        case "CheckUserWatchArticle":
            {
                PSCPortal.Services.CMS.CheckUserWatchArticle(CallCheckUserWatchWebMethodSuccess);
            }
            break;
    }
}
function CallCheckUserWatchWebMethodSuccess(results, context, methodName) {
    if (!results)
        window.history.back();
}
//end check user login

function pageLoad() {
    CheckUserWatchArticle();
}