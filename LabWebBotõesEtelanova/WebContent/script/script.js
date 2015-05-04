//script.js
String.prototype.trim = function() {
  return this.replace(/^\s*/, "").replace(/\s*$/, "");
};

function obterLabel(campo)
{
	if (campo.labels != undefined && campo.labels.length > 0)
	{
		return campo.labels[0];
	}
	else
	{
		var labels = document.getElementsByTagName("label");
		for (var index = 0; index < labels.length; index++)
		{
			if (labels[index].htmlFor == campo.id)
			{
				return labels[index];			
			}
		}
	}
}