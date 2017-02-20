#!/usr/bin/perl

use strict;
my @dados = ();
my $soma = 0;
my $numero;
my $desvio;
my $media;
my $quantidade;
my $x;
do{
print "Digite os numeros das réplicas e aperte s para sair \n";
$numero = <STDIN>;
	chomp($numero);
	
	if($numero ne "s"){
	push(@dados, $numero);
                $soma = $soma + $numero;
		$quantidade++;
	}	
}while($numero ne "s");-

print "$quantidade \n";

$media = $soma / $quantidade;
my $qsoma = 0;
my $qnumero;
for (my $indice = 0; $indice <= $quantidade -1; $indice++ ){
		my $qnumero = $dados[$indice];	
 my $diferenca = ($qnumero - $media) ** 2;

$qsoma = $qsoma + $diferenca;
}


$desvio = sqrt ($qsoma/ $quantidade);

print "O desvio padrão é: $desvio \n";

print "sua média é: $media \n";

print "@dados \n"; 

my @dados2 = ();
my $soma2 = 0;
my $numero2;
my $desvio2;
my $media2;
my $quantidade2;
my $x2;
do{
print "Digite os numeros do segundo conjunto de réplicas e aperte s para sair \n";
$numero2 = <STDIN>;
         chomp($numero2);
         
         if ($numero2 ne "s"){
         push (@dados2, $numero2);
                    $soma2 = $soma2 + $numero2;
                    $quantidade2++;
        }
}while($numero2 ne "s");-

print "$quantidade2 \n";

$media2 = $soma2 / $quantidade2;
my $qsoma2 = 0;
my $qnumero2;
for (my $indice2 = 0; $indice2 <= $quantidade2 -1; $indice2++ ){
                 my $qnumero2 = $dados2[$indice2];
my $diferenca2 = ($qnumero2 - $media2) ** 2;

$qsoma2 = $qsoma2 + $diferenca2;
}

$desvio2 = sqrt ($qsoma2/ $quantidade2);

print "O desvio padrão do segundo conjunto de réplicas é: $desvio2 \n";

print "Sua media é: $media2 \n";

print "Respectivamente os desvios padrões de cada conjunto são: $desvio e $desvio2 \n";

my $media3;
my $mediax;
my $mediay;
my $final;
my $media4;
my $raiz;

$mediax = ($desvio ** 2)/ $quantidade;
$mediay = ($desvio2 ** 2)/ $quantidade2;
$media3 = $mediax + $mediay;
my $desvioq = ($desvio ** 2);
my $desvioq2 = ($desvio2 ** 2);
$media4 = $media - $media2;
$raiz = sqrt($media3);
$final  = $media4 / $raiz;

print "Teste T: $final \n";
print "Desvios: $desvioq e $desvioq2 \n";


