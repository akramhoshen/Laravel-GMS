function change_color(v_id,e_color)
{
			
	if (document.getElementById(v_id).bgColor=="#33CC00")
	{
		document.getElementById(v_id).bgColor=e_color;
	}
	else
	{
		document.getElementById(v_id).bgColor="#33CC00";
	}
}

function change_row_color(r_id, d_color) {

	let row = document.getElementById(r_id);
	let tds = row.querySelectorAll('td');  //Select all <td> in the row

	//console.log(`Current color: ${tds[0].style.backgroundColor}`);
  	//console.log(`Original color: ${d_color}`);
	
	//Check the background of first <td>
	if (tds[0].style.backgroundColor === 'rgb(51, 204, 0)' || tds[0].style.backgroundColor == "#33CC00")
	{
		tds.forEach(td => td.style.backgroundColor = d_color); //If it's thighlight color, reset to default
	}
	else
	{
		tds.forEach(td => td.style.backgroundColor = 'rgb(51, 204, 0)'); //Otherwise, set highlight color
	}
}

	