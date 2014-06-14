require 'Time'

class String
	def black;          "\033[30m#{self}\033[0m" end
	def red;            "\033[31m#{self}\033[0m" end
	def green;          "\033[32m#{self}\033[0m" end
	def brown;          "\033[33m#{self}\033[0m" end
	def blue;           "\033[34m#{self}\033[0m" end
	def magenta;        "\033[35m#{self}\033[0m" end
	def cyan;           "\033[36m#{self}\033[0m" end
	def gray;           "\033[37m#{self}\033[0m" end
end


system("cls")

def head()
	puts "TLD Check"
end

domains	=	{
	".br"		=>	"Brazilian",
	".com"		=>	"Comercial",
	".aero"		=>	"Aircraft",
	".biz"		=>	"Business",
	".coop"		=>	"Cooperative",
	".edu"		=>	"Educational",
	".gov"		=>	"Government",
	".info"		=>	"Information",
	".int"		=>	"International organization",
	".jus"		=>	"Judicial",
	".mil"		=>	"Military",
	".museum"	=>	"Museum",
	".net"		=>	"Network",
	".org"		=>	"Organization",
	".pro"		=>	"Jobs",
	".ac"		=>	"Ascension Island",
	".ad"		=>	"Andorra",
	".ae"		=>	"United Arab Emirates",
	".af"		=>	"Afghanistan",
	".ag"		=>	"Antigua and Barbuda",
	".ai"		=>	"Anguilla",
	".al"		=>	"Albania",
	".am"		=>	"Armenia",
	".an"		=>	"Netherlands Antilles",
	".ao"		=>	"Angola",
	".aq"		=>	"Antarctica",
	".ar"		=>	"Argentina",
	".as"		=>	"American Samoa",
	".at"		=>	"Austria",
	".au"		=>	"Australia",
	".aw"		=>	"Aruba",
	".ax"		=>	"Åland",
	".az"		=>	"Azerbaijan",
	".ba"		=>	"Bosnia and Herzegovina",
	".bb"		=>	"Barbados",
	".bd"		=>	"Bangladesh",
	".be"		=>	"Belgium",
	".bf"		=>	"Burkina Faso",
	".bg"		=>	"Bulgaria",
	".bh"		=>	"Bahrain",
	".bi"		=>	"Burundi",
	".bj"		=>	"Benin",
	".bm"		=>	"Bermuda",
	".bn"		=>	"Brunei",
	".bo"		=>	"Bolivia",
	".bs"		=>	"Bahamas",
	".bt"		=>	"Bhutan",
	".bv"		=>	"Bouvet Island",
	".bw"		=>	"Botswana",
	".by"		=>	"Belarus",
	".bz"		=>	"Belize",
	".ca"		=>	"Canada",
	".cc"		=>	"Cocos",
	".cd"		=>	"Democratic Republic of the Congo",
	".cf"		=>	"Central African Republic",
	".cg"		=>	"Republic of the Congo",
	".ch"		=>	"Switzerland",
	".ci"		=>	"Côte d'Ivoire",
	".ck"		=>	"Cook Islands",
	".cl"		=>	"Chile",
	".cm"		=>	"Cameroon",
	".cn"		=>	"People's Republic of China",
	".co"		=>	"Colombia",
	".cr"		=>	"Costa Rica",
	".cs"		=>	"Czechoslovakia",
	".cu"		=>	"Cuba",
	".cv"		=>	"Cape Verde",
	".cw"		=>	"Curaçao",
	".cx"		=>	"Christmas Island",
	".cy"		=>	"Cyprus",
	".cz"		=>	"Czech Republic",
	".dd"		=>	"East Germany",
	".de"		=>	"Germany",
	".dj"		=>	"Djibouti",
	".dk"		=>	"Denmark",
	".dm"		=>	"Dominica",
	".do"		=>	"Dominican Republic",
	".dz"		=>	"Algeria",
	".ec"		=>	"Ecuador",
	".ee"		=>	"Estonia",
	".eg"		=>	"Egypt",
	".eh"		=>	"Western Sahara",
	".er"		=>	"Eritrea",
	".es"		=>	"Spain",
	".et"		=>	"Ethiopia",
	".eu"		=>	"European Union",
	".fi"		=>	"Finland",
	".fj"		=>	"Fiji",
	".fk"		=>	"Falkland Islands",
	".fm"		=>	"Federated States of Micronesia",
	".fo"		=>	"Faroe Islands",
	".fr"		=>	"France",
	".ga"		=>	"Gabon",
	".gb"		=>	"United Kingdom",
	".gd"		=>	"Grenada",
	".ge"		=>	"Georgia",
	".gf"		=>	"French Guiana",
	".gg"		=>	"Guernsey",
	".gh"		=>	"Ghana",
	".gp"		=>	"Guadeloupe",
	".gq"		=>	"Equatorial Guinea",
	".gr"		=>	"Greece",
	".gs"		=>	"South Georgia and the South Sandwich Islands",
	".gt"		=>	"Guatemala",
	".gu"		=>	"Guam",
	".gw"		=>	"Guinea-Bissau",
	".gy"		=>	"Guyana",
	".hk"		=>	"Hong Kong",
	".hm"		=>	"Heard Island and McDonald Islands",
	".hn"		=>	"Honduras",
	".hr"		=>	"Croatia",
	".ht"		=>	"Haiti",
	".hu"		=>	"Hungary",
	".id"		=>	"Indonesia",
	".ie"		=>	"Ireland",
	".il"		=>	"Israel",
	".im"		=>	"Isle of Man",
	".in"		=>	"India",
	".io"		=>	"British Indian Ocean Territory",
	".iq"		=>	"Iraq",
	".ir"		=>	"Iran",
	".is"		=>	"Iceland",
	".it"		=>	"Italy",
	".je"		=>	"Jersey",
	".jm"		=>	"Jamaica",
	".jo"		=>	"Jordan",
	".jp"		=>	"Japan",
	".ke"		=>	"Kenya",
	".kg"		=>	"Kyrgyzstan",
	".kh"		=>	"Cambodia",
	".ki"		=>	"Kiribati",
	".km"		=>	"Comoros",
	".kn"		=>	"Saint Kitts and Nevis",
	".kp"		=>	"Democratic People's Republic of Korea",
	".kr"		=>	"Republic of Korea",
	".kw"		=>	"Kuwait",
	".ky"		=>	"Cayman Islands",
	".kz"		=>	"Kazakhstan",
	".la"		=>	"Laos",
	".lb"		=>	"Lebanon",
	".lc"		=>	"Saint Lucia",
	".li"		=>	"Liechtenstein",
	".lk"		=>	"Sri Lanka",
	".lr"		=>	"Liberia",
	".ls"		=>	"Lesotho",
	".lt"		=>	"Lithuania",
	".lu"		=>	"Luxembourg",
	".lv"		=>	"Latvia",
	".ly"		=>	"Libya",
	".ma"		=>	"Morocco",
	".mc"		=>	"Monaco",
	".md"		=>	"Moldova",
	".me"		=>	"Montenegro",
	".mg"		=>	"Madagascar",
	".mh"		=>	"Marshall Islands",
	".mk"		=>	"Macedonia",
	".ml"		=>	"Mali",
	".mm"		=>	"Myanmar",
	".mn"		=>	"Mongolia",
	".mo"		=>	"Macau",
	".mp"		=>	"Northern Mariana Islands",
	".mq"		=>	"Martinique",
	".mr"		=>	"Mauritania",
	".ms"		=>	"Montserrat",
	".mt"		=>	"Malta",
	".mu"		=>	"Mauritius",
	".mv"		=>	"Maldives",
	".mw"		=>	"Malawi",
	".mx"		=>	"Mexico",
	".my"		=>	"Malaysia",
	".mz"		=>	"Mozambique",
	".na"		=>	"Namibia",
	".nc"		=>	"New Caledonia",
	".ne"		=>	"Niger",
	".nf"		=>	"Norfolk Island",
	".ng"		=>	"Nigeria",
	".ni"		=>	"Nicaragua",
	".nl"		=>	"Netherlands",
	".no"		=>	"Norway",
	".np"		=>	"Nepal",
	".nr"		=>	"Nauru",
	".nu"		=>	"Niue",
	".nz"		=>	"New Zealand",
	".om"		=>	"Oman",
	".pa"		=>	"Panama",
	".pe"		=>	"Peru",
	".pf"		=>	"French Polynesia",
	".pg"		=>	"Papua New Guinea",
	".ph"		=>	"Philippines",
	".pk"		=>	"Pakistan",
	".pl"		=>	"Poland",
	".pm"		=>	"Saint-Pierre and Miquelon",
	".pn"		=>	"Pitcairn Islands",
	".pr"		=>	"Puerto Rico",
	".ps"		=>	"State of Palestine",
	".pt"		=>	"Portugal",
	".pw"		=>	"Palau",
	".py"		=>	"Paraguay",
	".qa"		=>	"Qatar",
	".re"		=>	"Réunion",
	".ro"		=>	"Romania",
	".rs"		=>	"Serbia",
	".ru"		=>	"Russia",
	".rw"		=>	"Rwanda",
	".sa"		=>	"Saudi Arabia",
	".sb"		=>	"Solomon Islands",
	".sc"		=>	"Seychelles",
	".sd"		=>	"Sudan",
	".se"		=>	"Sweden",
	".sg"		=>	"Singapore",
	".sh"		=>	"Saint Helena",
	".si"		=>	"Slovenia",
	".sj"		=>	"Svalbard and Jan Mayen Islands",
	".sk"		=>	"Slovakia",
	".sl"		=>	"Sierra Leone",
	".sm"		=>	"San Marino",
	".sn"		=>	"Senegal",
	".so"		=>	"Somalia",
	".sr"		=>	"Suriname",
	".ss"		=>	"South Sudan",
	".st"		=>	"São Tomé and Príncipe",
	".su"		=>	"Soviet Union",
	".sv"		=>	"El Salvador",
	".sx"		=>	"Sint Maarten",
	".sy"		=>	"Syria",
	".sz"		=>	"Swaziland",
	".tc"		=>	"Turks and Caicos Islands",
	".td"		=>	"Chad",
	".tf"		=>	"French Southern and Antarctic Lands",
	".tg"		=>	"Togo",
	".th"		=>	"Thailand",
	".tj"		=>	"Tajikistan",
	".tk"		=>	"Tokelau",
	".tl"		=>	"East Timor",
	".tm"		=>	"Turkmenistan",
	".tn"		=>	"Tunisia",
	".to"		=>	"Tonga",
	".tp"		=>	"East Timor",
	".tr"		=>	"Turkey",
	".tt"		=>	"Trinidad and Tobago",
	".tv"		=>	"Tuvalu",
	".tw"		=>	"Taiwan",
	".tz"		=>	"Tanzania",
	".ua"		=>	"Ukraine",
	".ug"		=>	"Uganda",
	".uk"		=>	"United Kingdom",
	".us"		=>	"United States of America",
	".uy"		=>	"Uruguay",
	".uz"		=>	"Uzbekistan",
	".va"		=>	"Vatican City",
	".vc"		=>	"Saint Vincent and the Grenadines",
	".ve"		=>	"Venezuela",
	".vg"		=>	"British Virgin Islands",
	".vi"		=>	"United States Virgin Islands",
	".vn"		=>	"Vietnam",
	".vu"		=>	"Vanuatu",
	".wf"		=>	"Wallis and Futuna",
	".ws"		=>	"Samoa",
	".ye"		=>	"Yemen",
	".yt"		=>	"Mayotte",
	".yu"		=>	"SFR Yugoslavia or FR Yugoslavia",
	".za"		=>	"South Africa",
	".zm"		=>	"Zambia",
	".zw"		=>	"Zimbabwe",
	".onion"	=>	"Onion",
}

def head()
	puts "
	 _____ __    ____          _   _ ___ _         
	|_   _|  |  |    | ___ ___| |_|_|  _|_|___ ___ 
	  | | |  |__|  |  | -_|   |  _| |  _| | -_|  _|
	  |_| |_____|____/|___|_|_|_| |_|_| |_|___|_|  
	".green
end

def loading()
	puts "
  /$$$$$$                      /$$      
 /$$__  $$                    | $$      
| $$  | $$  /$$$$$$   /$$$$$$$| $$$$$$$ 
| $$$$$$$$ /$$__  $$ /$$_____/| $$__  $$
| $$__  $$| $$  |__/|  $$$$$$ | $$  | $$
| $$  | $$| $$       |____  $$| $$  | $$
| $$  | $$| $$       /$$$$$$$/| $$  | $$
|__/  |__/|__/      |_______/ |__/  |__/
                                        
                                        
                                        
 /$$                           /$$      
| $$                          | $$      
| $$        /$$$$$$   /$$$$$$ | $$   /$$
| $$       /$$__  $$ |____  $$| $$  /$$/
| $$      | $$$$$$$$  /$$$$$$$| $$$$$$/ 
| $$      | $$_____/ /$$__  $$| $$_  $$ 
| $$$$$$$$|  $$$$$$$|  $$$$$$$| $$ |  $$
|________/ |_______/ |_______/|__/  |__/
	".blue
end
name	=	ARGV.first
domains.each do |domain, etn|
  if name.include? (domain)
    puts "[#{name}]".cyan+" The "+domain.blue+" it is a "+etn+" Domain."
	elsif name	== "--help"
		loading()
		system("cls")
		puts ""
		puts "Development".cyan
		puts "Developed by "+"Arsh Leak. 2014."
		puts ""
		puts ""
		puts "GitHub.".cyan
		puts "http://github.com/4rsh"
		puts ""
		puts "Facebook.".cyan
		puts "http://facebook.com/doxnetwork"
		puts ""
		puts "Credits.".cyan
		puts "Prof. Eric Weinstein."
		puts ""
		puts "How to.".cyan
		puts "If you want to see all TLD's, use:"
		puts "ltdentifier.rb --display".green
	elsif name == "--display"
		puts "Domain:".green+domain+" -"+" Entity: ".green+etn
	elsif name.to_s.empty?
		print "Erro."
	  end
end