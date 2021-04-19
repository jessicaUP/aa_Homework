document.addEventListener("DOMContentLoaded", function(){

  const canvas = document.getElementById("mycanvas");
    canvas.height = 500;
    canvas.width = 500;

  const ctx = canvas.getContext("2d");
    ctx.fillstyle = "black";
    ctx.fillRect(30, 15, 200, 200)

  ctx.beginPath();
  ctx.arc(100, 100, 20, 0, 2 * Math.PI, true);
  ctx.strokeStyle = "white";
  ctx.lineWidth = 6;
  ctx.stroke();

  ctx.beginPath();
  ctx.arc(160, 100, 20, 0, 2 * Math.PI, true);
  ctx.strokeStyle = "white";
  ctx.lineWidth = 6;
  ctx.stroke();
  ctx.fillstyle = "white";
  ctx.fill();

});
