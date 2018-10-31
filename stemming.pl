#==================#
#Algoritma Stemming#
#==================#

my %freqImbuhan;	#to count frequencies

#Each dictionary here will contain all stemmed words that have been stemmed with stated prefix/suffix

my %dictKu;
my %dictMu;
my %dictNya;
my %dictKah;
my %dictLah;
my %dictPun;
my %dictKan;
my %dictI;
my %dictAn;
my %dictDiper;
my %dictDike;
my %dictDi;
my %dictKe;
my %dictSe;
my %dictTer;
my %dictBer;
my %dictMeng;
my %dictMem;
my %dictMen;
my %dictPeng;
my %dictPem;
my %dictPen;
my %dictPer;
my %dictTe;
my %dictMe;
my %dictBe;
my %dictPe;

sub delInflectionSuffixes {
	my ($word) = @_;
	if ($word =~ /(ku)$/) {
		$word =~ s/(ku)$//g;
		if (!exists $dictKu{$word}) {
			$dictKu{$word} = 1;
			$freqImbuhan{'ku'}++;
		}
		return $word;
	}
	elsif ($word =~ /(mu)$/) {
		$word =~ s/(mu)$//g;
		if (!exists $dictMu{$word}) {
			$dictMu{$word} = 1;
			$freqImbuhan{'mu'}++;
		}
		return $word;
	}
	elsif ($word =~ /(nya)$/) {
		$word =~ s/(nya)$//g;
		if (!exists $dictNya{$word}) {
			$dictNya{$word} = 1;
			$freqImbuhan{'nya'}++;
		}
		return $word;
	}
	elsif ($word =~ /(kah)$/) {
		$word =~ s/(kah)$//g;
		if (!exists $dictKah{$word}) {
			$dictKah{$word} = 1;
			$freqImbuhan{'kah'}++;
		}
		return $word;
	}
	elsif ($word =~ /(lah)$/) {
		$word =~ s/(lah)$//g;
		if (!exists $dictLah{$word}) {
			$dictLah{$word} = 1;
			$freqImbuhan{'lah'}++;
		}
		return $word;
	}
	elsif ($word =~ /(pun)$/) {
		$word =~ s/(pun)$//g;
		if (!exists $dictPun{$word}) {
			$dictPun{$word} = 1;
			$freqImbuhan{'pun'}++;
		}
		return $word;
	}
	elsif ($word =~ /(kan)$/) {
		$word =~ s/(kan)$//g;
		if (!exists $dictKan{$word}) {
			$dictKan{$word} = 1;
			$freqImbuhan{'kan'}++;
		}
		return $word;
	}
	return $word;
}

sub delDerivativeSuffixes {
	my ($word) = @_;
	if ($word =~ /(i)$/) {
		$word =~ s/(i)$//g;
		if (!exists $dictI{$word}) {
			$dictI{$word} = 1;
			$freqImbuhan{'i'}++;
		}
		return $word;
	}
	elsif ($word =~ /(an)$/) {
		$word =~ s/(an)$//g;
		if (!exists $dictAn{$word}) {
			$dictAn{$word} = 1;
			$freqImbuhan{'an'}++;
		}
		return $word;
	}
	return $word;
}

sub delDerivativePrefixes {
	my ($word) = @_;
	if($word =~ /^(di|ke|se)/){
        if($word =~ /^(diper)/) {
            $word =~ s/(diper)//g;
			if (!exists $dictDiper{$word}) {
				$dictDiper{$word} = 1;
				$freqImbuhan{'diper'}++;
			}
            return $word;
        }
		elsif ($word =~ /^(dike)/) {
			$word =~ s/(dike)//g;
			if (!exists $dictDike{$word}) {
				$dictDike{$word} = 1;
				$freqImbuhan{'dike'}++;
			}
            return $word;
		}
		elsif ($word =~ /^(di)/) {
			$word =~ s/(di)//g;
			if (!exists $dictDi{$word}) {
				$dictDi{$word} = 1;
				$freqImbuhan{'di'}++;
			}
            return $word;
		}
		elsif ($word =~ /^(ke)/) {
			$word =~ s/(ke)//g;
			if (!exists $dictAn{$word}) {
				$dictAn{$word} = 1;
				$freqImbuhan{'an'}++;
			}
            return $word;
		}
		elsif ($word =~ /^(se)/) {
			$word =~ s/(se)//g;
			if (!exists $dictSe{$word}) {
				$dictSe{$word} = 1;
				$freqImbuhan{'se'}++;
			}
            return $word;
		}
        return $word;
    }
    elsif($word =~ /^(te|be|me|pe)/){
        if($word =~ /^(ter|ber)/){
			if($word =~ /^(ter)/) {
            $word =~ s/(ter)//g;
			if (!exists $dictTer{$word}) {
				$dictTer{$word} = 1;
				$freqImbuhan{'ter'}++;
			}
            return $word;
			}
			elsif($word =~ /^(ber)/) {
            $word =~ s/(ber)//g;
			if (!exists $dictBer{$word}) {
				$dictBer{$word} = 1;
				$freqImbuhan{'ber'}++;
			}
            return $word;
			}
        }
		elsif($word =~ /^(meng)/) {
			$word =~ s/(meng)//g;
			if (!exists $dictMeng{$word}) {
			$dictMeng{$word} = 1;
			$freqImbuhan{'meng'}++;
		}
            return $word;
		}
		elsif($word =~ /^(mem)/) {
			$word =~ s/(mem)//g;
			if (!exists $dictMem{$word}) {
			$dictMem{$word} = 1;
			$freqImbuhan{'mem'}++;
		}
            return $word;
		}
		elsif($word =~ /^(men)/) {
			$word =~ s/(men)//g;
			if (!exists $dictMen{$word}) {
			$dictMen{$word} = 1;
			$freqImbuhan{'men'}++;
		}
            return $word;
		}
		elsif($word =~ /^(peng)/) {
			$word =~ s/(peng)//g;
			if (!exists $dictPeng{$word}) {
			$dictPeng{$word} = 1;
			$freqImbuhan{'peng'}++;
		}
            return $word;
		}
		elsif($word =~ /^(pem)/) {
			$word =~ s/(pem)//g;
			if (!exists $dictPem{$word}) {
			$dictPem{$word} = 1;
			$freqImbuhan{'pem'}++;
		}
            return $word;
		}
		elsif($word =~ /^(pen)/) {
			$word =~ s/(pen)//g;
			if (!exists $dictPen{$word}) {
			$dictPen{$word} = 1;
			$freqImbuhan{'pen'}++;
		}
            return $word;
		}
		elsif($word =~ /^(per)/) {
            $word =~ s/(per)//g;
			if (!exists $dictPer{$word}) {
			$dictPer{$word} = 1;
			$freqImbuhan{'per'}++;
		}
            return $word;
			}
        else:
			if($word =~ /^(te)/) {
            $word =~ s/(te)//g;
			if (!exists $dictTe{$word}) {
			$dictTe{$word} = 1;
			$freqImbuhan{'te'}++;
		}
            return $word;
			}
			elsif($word =~ /^(me)/) {
            $word =~ s/(me)//g;
			if (!exists $dictMe{$word}) {
			$dictMe{$word} = 1;
			$freqImbuhan{'me'}++;
		}
            return $word;
			}
			elsif($word =~ /^(be)/) {
            $word =~ s/(be)//g;
			if (!exists $dictBe{$word}) {
			$dictBe{$word} = 1;
			$freqImbuhan{'be'}++;
		}
            return $word;
			}
			elsif($word =~ /^(pe)/) {
            $word =~ s/(pe)//g;
			if (!exists $dictPe{$word}) {
			$dictPe{$word} = 1;
			$freqImbuhan{'pe'}++;
		}
            return $word;
			}
        return $word;
    }
    return $word;
}

$input = 'Korpus1.txt';     		#the input file 
$output = 'word_list_result.txt';	#the output file

open (INPUTFILE, $input) or die; 	#open file input
open (OUT, '>', $output) or die;	#open file output

$text = 0;

my $vocab; #all corpus 1 words

while ($sentence = <INPUTFILE>) {
	if ($sentence =~ /<TEXT>/) { 
		$text = 1; 
		}
	if ($sentence =~ /<\/TEXT>/) { $text = 0;}
	if ($text) {
		chomp($sentence);
		$sentence =~ tr/A-Z/a-z/;
		foreach $word (split /\s+/, $sentence) {
			if ($word =~ /^[a-z]*$/) {
				$vocab{$word}++;
			}
		}		
	}
}

foreach $word (keys %vocab) {	
	printf OUT "%s\n", $word;
}

close(OUT);

open(OUT, ">lovins_stemmer_result.txt");

my @arr = keys %vocab;

foreach $kata (@arr) {
	if(length($kata) > 5 ){
		$kata = delInflectionSuffixes($kata);
        if(length($kata) > 5 ){
			$kata = delDerivativeSuffixes($kata);
            if(length($kata) > 5 ){
                $kata = delDerivativePrefixes($kata);
            }
        }
    }
}

$res = join "\n",@arr;

printf OUT "%s", $res; #print out list
	
printf "%s\n", $kata;

#list the top 5 prefix or suffix, and examples

$rank;

foreach my $str (sort {$freqImbuhan{$b} <=> $freqImbuhan{$a}} keys %freqImbuhan) {
	$rank++;
	printf "%s. %-17s %s\n",$rank, $str, $freqImbuhan{$str};
	$jumlah = 0;
	if ($str eq "ku") {
		foreach my $words (keys %dictKu) {
			$jumlah++;
			printf "%-20s %sku\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "mu") {
		foreach my $words (keys %dictMu) {
			$jumlah++;
			printf "%-20s %smu\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "nya") {
		foreach my $words (keys %dictNya) {
			$jumlah++;
			printf "%-20s %snya\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "kah") {
		foreach my $words (keys %dictKah) {
			$jumlah++;
			printf "%-20s %skah\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "lah") {
		foreach my $words (keys %dictLah) {
			$jumlah++;
			printf "%-20s %slah\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "pun") {
		foreach my $words (keys %dictPun) {
			$jumlah++;
			printf "%-20s %spun\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "kan") {
		foreach my $words (keys %dictKan) {
			$jumlah++;
			printf "%-20s %skan\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "i") {
		foreach my $words (keys %dictI) {
			$jumlah++;
			printf "%-20s %si\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "an") {
		foreach my $words (keys %dictAn) {
			$jumlah++;
			printf "%-20s %san\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "diper") {
		foreach my $words (keys %dictDiper) {
			$jumlah++;
			printf "%-20s diper%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "dike") {
		foreach my $words (keys %dictDike) {
			$jumlah++;
			printf "%-20s dike%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "di") {
		foreach my $words (keys %dictDi) {
			$jumlah++;
			printf "%-20s di%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "ke") {
		foreach my $words (keys %dictKe) {
			$jumlah++;
			printf "%-20s ke%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "se") {
		foreach my $words (keys %dictSe) {
			$jumlah++;
			printf "%-20s se%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "ter") {
		foreach my $words (keys %dictTer) {
			$jumlah++;
			printf "%-20s ter%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "ber") {
		foreach my $words (keys %dictBer) {
			$jumlah++;
			printf "%-20s ber%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "meng") {
		foreach my $words (keys %dictMeng) {
			$jumlah++;
			printf "%-20s meng%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "mem") {
		foreach my $words (keys %dictMem) {
			$jumlah++;
			printf "%-20s mem%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "men") {
		foreach my $words (keys %dictMen) {
			$jumlah++;
			printf "%-20s men%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "peng") {
		foreach my $words (keys %dictPeng) {
			$jumlah++;
			printf "%-20s peng%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "pem") {
		foreach my $words (keys %dictPem) {
			$jumlah++;
			printf "%-20s pem%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "pen") {
		foreach my $words (keys %dictPen) {
			$jumlah++;
			printf "%-20s pen%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "per") {
		foreach my $words (keys %dictPer) {
			$jumlah++;
			printf "%-20s per%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "te") {
		foreach my $words (keys %dictTe) {
			$jumlah++;
			printf "%-20s te%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "me") {
		foreach my $words (keys %dictMe) {
			$jumlah++;
			printf "%-20s me%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "be") {
		foreach my $words (keys %dictBe) {
			$jumlah++;
			printf "%-20s be%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	elsif ($str eq "pe") {
		foreach my $words (keys %dictPe) {
			$jumlah++;
			printf "%-20s pe%s\n",$words, $words;
			if ($jumlah eq 10) {
				printf "\n";
				last;
			}
		}
	}
	if ($rank eq 5) {
		last;
	}
}

close(OUT);