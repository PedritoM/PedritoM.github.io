   function w=fun1(t,a)
   if(isreal(a))
      w=a./(t.^2+a^2);
   else
       display("Solo numeros reales");
   end
   end