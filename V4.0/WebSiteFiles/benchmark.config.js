var errorList = new Array();
var varArray = new Array();
varArray[0] = build;
varArray[0].Name = "build";
varArray[1] = empty;
varArray[1].Name = "empty";
varArray[2] = loadById;
varArray[2].Name = "loadById";
varArray[3] = loadWithInclude;
varArray[3].Name = "loadWithInclude";
varArray[4] = loadWithMultiIncludes;
varArray[4].Name = "loadWithMultiIncludes";
varArray[5] = loadWithTransformer;
varArray[5].Name = "loadWithTransformer";
varArray[6] = queryWithIndex;
varArray[6].Name = "queryWithIndex";
varArray[7] = queryWithInclude;
varArray[7].Name = "queryWithInclude";
varArray[8] = lazyQueryWithInclude;
varArray[8].Name = "lazyQueryWithInclude";
varArray[9] = newDocuments;
varArray[9].Name = "newDocuments";
varArray[10] = deleteDocument;
varArray[10].Name = "deleteDocument";
varArray[11] =queryWithMultiIncludes;
varArray[11].Name ="queryWithMultiIncludes";
varArray[12] =indexTime;
varArray[12].Name ="indexTime";
varArray[13] = queryWithDynamicIndex;
varArray[13].Name = "queryWithDynamicIndex";
varArray[14] = indexingNewDocuments;
varArray[14].Name = "indexingNewDocuments"; 
varArray[15] = tennewindexes;
varArray[15].Name = "tennewindexes";

var dataArray = new Array();
var colors = new Array();


for ( i = 0 ; i < varArray.length; i++)
{
	if ( varArray[i].length < date.length)
	{
		while ( varArray[i].length < date.length )
		{
			varArray[i].unshift("");
		}
	}
}


for ( i = 0 ; i < varArray.length; i++)
{

	colors[i] = "rgba("+ Math.floor(Math.random()*255)+","+Math.floor(Math.random()*255)+","+Math.floor(Math.random()*255) + ",1)"; 
	 
	dataArray[i] = {
			label: varArray[i].Name,
			fillColor : "rgba(255, 255, 255, 0)",
			strokeColor : colors[i],
			pointColor : colors[i],
			pointStrokeColor : "#fff",
			pointHighlightFill : "#fff",
			pointHighlightStroke : "rgba(220,220,220,1)",
			data :varArray[i]
		};
}

var randomScalingFactor = function(){ return Math.round(Math.random()*1)};

var basicChartData = {
	labels : date,
	datasets : [ dataArray[0] , dataArray[1]]
}

var loadChartData = {
	labels : date,
	datasets : [ dataArray[2] , dataArray[3], dataArray[4], dataArray[5]]
}

var queryChartData = {
	labels : date,
	datasets : [ dataArray[6] , dataArray[7], dataArray[8], dataArray[11], dataArray[13] ]
}

var storeDeleteChartData = {
	labels : date,
	datasets : [ dataArray[9] , dataArray[10] ]
}

var indexChartData = {
	labels : date,
	datasets : [ dataArray[12] ]
}

var indexChartData1 = {
	labels : date,
	datasets : [ dataArray[15] ]
}

var indexChartData2 = {
	labels : date,
	datasets : [ dataArray[14] ]
}
