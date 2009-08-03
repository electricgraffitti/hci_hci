// Defer instantiation
YAHOO.util.Event.addListener(window, "load", function() {
    var hciEmployeeDirectory = new YAHOO.widget.DataTable("hciEmployeeDirectory", myColumnDefs, myDataSource, myConfigs);
});
// var hciEmployeeDirectory = new YAHOO.widget.DataTable("hciEmployeeDirectory", myColumnDefs, myDataSource, myConfigs);
var myDataSource = new YAHOO.util.DataSource(YAHOO.util.Dom.get("employeeTable"));
myDataSource.responseType = YAHOO.util.DataSource.TYPE_HTMLTABLE;
myDataSource.responseSchema = {
    fields: [
            {key:"First Name"},
            {key:"Last Name"},
            {key:"Department"},
            {key:"Phone Ext"},
            {key:"Home Phone"},
            {key:"Cell Phone"},
            {key:"Home Fax"},
            {key:"View Profile"}
    ]
};

var myColumnDefs = [
    {key:"First Name", sortable:true, width:100},
    {key:"Last Name", sortable:true, width:100},
    {key:"Department", sortable:true, width:80},
    {key:"Phone Ext", sortable:true},
    {key:"Home Phone", sortable:true},
    {key:"Cell Phone", sortable:true},
    {key:"Home Fax", sortable:true},
    {key:"View Profile"}
];

var myConfigs = {
    paginator : new YAHOO.widget.Paginator({
        rowsPerPage    : 2
    })
};


