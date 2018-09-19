window.onload = function() { 

     var m = document.getElementById("bridge_match");
      var n = document.getElementById('l1');
      var b = document.getElementById('l2');
      var v = document.getElementById('l3');
      var c = document.getElementById('l4');
      var x = document.getElementById('l5');
      var z = document.getElementById('l6');
      var l = document.getElementById('l7');
      var k = document.getElementById('l8');
      var j = document.getElementById('check2');
      var choice = document.getElementById('choice');
      var radio2 = document.getElementById('radio2');
      var radio1 = document.getElementById('radio1');
      document.getElementById("check2").onclick = function() {
          m.style.border = "5px solid #dfebcc";
          n.style.color = "#5f9a01";
          b.style.color = "#5f9a01";
          v.style.color = "#5f9a01";
          c.style.color = "#5f9a01";
          x.style.color = "#5f9a01";
          z.style.color = "#5f9a01";
          l.style.color = "#5f9a01";
          k.style.color = "#5f9a01";
          e.style.border = "none";
          r.style.color = "#e95000";
          t.style.color = "#e95000";
          y.style.color = "#e95000";
          u.style.color = "#e95000";
          i.style.color = "#e95000";
          o.style.color = "#e95000";
          p.style.color = "#e95000";
          a.style.color = "#e95000";
          choice.style.opacity = "0";
          radio2.style.backgroundImage = "none";
          radio1.style.backgroundImage = "url(assets/images/check_box1.png)";
         

      };
      var e = document.getElementById("bridge");
      var r = document.getElementById('li1');
      var t = document.getElementById('li2');
      var y = document.getElementById('li3');
      var u = document.getElementById('li4');
      var i = document.getElementById('li5');
      var o = document.getElementById('li6');
      var p = document.getElementById('li7');
      var a = document.getElementById('li8');
      var s = document.getElementById('check1');
      document.getElementById("check1").onclick = function() {
          e.style.border = "5px solid #dfebcc";
          r.style.color = "#5f9a01";
          t.style.color = "#5f9a01";
          y.style.color = "#5f9a01";
          u.style.color = "#5f9a01";
          i.style.color = "#5f9a01";
          o.style.color = "#5f9a01";
          p.style.color = "#5f9a01";
          a.style.color = "#5f9a01";
          m.style.border = "none";
          n.style.color = "#e95000";
          b.style.color = "#e95000";
          v.style.color = "#e95000";
          c.style.color = "#e95000";
          x.style.color = "#e95000";
          z.style.color = "#e95000";
          l.style.color = "#e95000";
          k.style.color = "#e95000";
          choice.style.opacity = "0";
           radio2.style.backgroundImage = "url(assets/images/check_box1.png)";
          radio1.style.backgroundImage = "none";         
      };
     
  };