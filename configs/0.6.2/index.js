$("#transformXml,#transformedOc,#errorMsg").parent().hide();
let xsltProcessor;

$("#xsltFile").change(function () {
    const xsltFile = $("#xsltFile").get(0).files[0];
    if (xsltFile) {
        $("#transformXml,#transformedOc").parent().show();
        $("#errorMsg").parent().hide();
        const reader = new FileReader();
        reader.readAsText(xsltFile, "UTF-8");
        reader.onload = function (evt) {
            xsltProcessor = new XSLTProcessor();
            const xsltText = evt.target.result + "";
            const domParser = new DOMParser();
            const xsltDoc = domParser.parseFromString(xsltText, "text/xml");
            xsltProcessor.importStylesheet(xsltDoc);
        }
        reader.onerror = function (evt) {
            $("#errorMsg").parent().show();
            $("#errorMsg").get(0).innerHTML = "error reading file";
        }
    }
});

$("#transformXml").keyup(function () {
    const xmlText = $("#transformXml").get(0).value;
    const domParser = new DOMParser();
    const xmlDoc = domParser.parseFromString(xmlText, "text/xml");
    const doc = xsltProcessor.transformToDocument(xmlDoc);
    if (!!doc) {
        $("#errorMsg").parent().hide();
        $("#transformedOc").get(0).value = new XMLSerializer().serializeToString(doc);
    } else {
        $("#errorMsg").parent().show();
        $("#transformedOc").get(0).value = '';
        $("#errorMsg").get(0).innerHTML = "unable to create OpenCore config";
    }
});

