<html>
    
<h1>Errsta</h1>
<p> <b><em>errsta</em></b> [-i] [-p] [-a] [-e] [-r] [-u]</p>
    
</body>
<ul>
    <li>-i IP address</li>
 <li>-p password</li>
 <li>-a action name</li>
 <li>-e entry</li>
 <li>-r regex </li>
 <li>-u username</li>
<ul>
</html>
The original purpose is to restart Linksys router when 500 Internal Server Error appears. 
Entry is any text needed to complete the action.
response.txt of the html will be created at the directory where command was initiated


======
###Use
<html>
To use the command simply clone to a directory then run 
PATH/errsta.sh <args>

The default values are
<ul>
<li>Password admin</li>
<li>Ip address 192.168.1.1</li>
<li>action reboot.tri</li>
<li>Entry</li>
<li>regex ([^0-9]|^)500([^0-9]|$)</li>
    </ul>

</html>

