<html>
   <head>
        <title>
            Rental
        </title>
        <style type="text/css">
       body
            {
                background-image:url(bg2.jpg);
                background-repeat: no-repeat;
                background-position:center;
                background-size: cover;
            }
            .one a
            {
                float: right;
                padding-left:5%;
                font-style: bold;
                 color:white;
                font-size:30px;
                
}

            
            .two a
            {
                float: right;
              color:white;
                padding-left:20%; 
                font-style: bold;
                font-size:30px;
            }
            .three p
            {
                color:black;
                float: right;
                width: 321px;
                  padding: 5%;
                  border:none;
                  margin: 0;
                 background: white;
                 opacity: 0.75;
                height: 56%;
                 position:absolute; left:55%; top:15%;
                
            }
            .four
            {
                
                float: right;
                width: 320px;
                  padding: 5%;
                  border:none;
                  margin: 0;
                 
                height: 30%;
                 position:absolute; left:55%; top:22%
            }
           


            
       </style>
   </head>
   <body>
      <div class="one">
          <a style="text-decoration:none" href="addhome.jsp">Host a Home</a>
       </div>
       <div class="one">
          <a style="text-decoration:none" href="realhome.jsp">Home</a>
       </div>
       
      <div class="three">
          <p> Enter the place</p>
      </div>
      <br>
       <div class="four">
                    
                      <form action="two.jsp" id="home1.jsp" method="post">
                      
                    
                      <select required name="place">
                              <option value="NULL">None</option>
                              <option value="chennai" name="place">Chennai</option>
                               <option value="guindy" name="place">Guindy</option>
                                <option value="chrompet" name="place">Chrompet</option>
                                 <option value="tnagar" name="place">T.Nagar</option>
                              <option value="madurai" name="place">Madurai</option>
                              <option value="coimbatore" name="place">Coimbatore</option>
                              <option value="dharmapuri" name="place">Dharmapuri</option>
                               <option value="salem" name="place">Salem</option>
                                <option value="namakkal" name="place">Namakkal</option>
                                 <option value="trichy" name="place">Trichy</option>
                                 <option value="erode" name="place">Erode</option>
                                 <option value="kodaikanal" name="place">Kodaikanal</option>
                                  <option value="erode" name="place">Erode</option>
</select>
                    <br>
                    <p>CheckIn</p>
                    <input type="date" name="checkin">
                    <br>
                   
                    <p>Days to be stayed</p>
                    <input type="text" name="days"></input>
                    <br>
                    <br>
                    Guests
                    <br><br>
                    <select required name="guest">
                                                            <option value="NULL" name="guest">None</option>
                                                            <option value="1" name="guest">One</option>
                                                            <option value="2" name="guest">Two</option>
                                                             <option value="3" name="guest">Three</option>
                                                            <option value="4" name="guest">Four</option>
                                                            <option value="5" name="guest">Five</option>
                                                            <option value="6" name="guest">Six</option>
                                </select>
                                <p> Enter Your Id</p>
                                
                                <input type="text" name="id"></input>
                                <br><br>
                          <pre>              <input type="SUBMIT"></pre>
                    </form>
         </div>
   </body>
</html>