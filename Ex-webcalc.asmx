<%@WebService Language="C#" Class="Calc"%>

//----------------------------------
// Ex-WebCalc.asmx
//----------------------------------

using System;
using System.Web.Services;

public class Calc : WebService
{
   [WebMethod]
   public int Add( int x, int y )
   {
      return x + y;
   }

   [WebMethod]
   public int Subtract( int x, int y )
   {
      return x - y;
   }

   [WebMethod]
   public int Multiply( int x, int y )
   {
      return x * y;
   }

   [WebMethod]
   public int Divide( int x, int y )
   {
      int answer;

      if ( y == 0 )
         answer = 0;
      else
         answer = x / y;

      return answer;
   }
}
