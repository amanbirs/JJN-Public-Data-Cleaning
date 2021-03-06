********************************************************************** 
* Date created: 14th October 2015
* author: Amanbir Singh, amanbir.s@gmail.com, amanbirsingh@justjobsnetwork.org
* 
* The code below takes 
* 
* 
* Date last edited: 
********************************************************************** 


cap label drop state_codes 
cap label drop district_codes

* State Codes from NSS 
label define state_codes  35 "A And N Islands" 28 "Andhra Pradesh" 12 "Arunachal Pradesh" 18 "Assam" 10 "Bihar" 4 "Chandigarh" 22 "Chhattisgarh" 26 "D And N Haveli" 25 "Daman And Diu" 7 "Delhi" 30 "Goa" 24 "Gujarat" 6 "Haryana" 2 "Himachal Pradesh" 1 "Jammu And Kashmir" 20 "Jharkhand" 29 "Karnataka" 32 "Kerala" 31 "Lakshdweep" 23 "Madhya Pradesh" 27 "Maharashtra" 14 "Manipur" 17 "Meghalaya" 15 "Mizoram" 13 "Nagaland" 21 "Odisha" 34 "Pondicherry" 3 "Punjab" 8 "Rajasthan" 11 "Sikkim" 33 "Tamil Nadu" 36 "Telangana" 16 "Tripura" 9 "Uttar Pradesh" 5 "Uttarakhand" 19 "West Bengal" 999 "India" 


* District Codes from NSS
#delim ;

label define district_codes
3501	"South Andaman"
3502	"Nicobars"
3503	"North and Middle Andaman"
2811	"Srikakulam"
2812	"Vizianagaram"
2813	"Visakhapatnam"
2814	"East Godavari"
2815	"West Godavari"
2816	"Krishna"
2817	"Guntur"
2818	"Prakasam"
2819	"Nellore"
2801	"Adilabad"
2802	"Nizamabad"
2804	"Medak"
2805	"Hyderabad"
2806	"Rangareddi"
2807	"Mahbubnagar"
2803	"Karimnagar"
2808	"Nalgonda"
2809	"Warangal"
2810	"Khammam"
2820	"Cuddapah"
2821	"Kurnool"
2822	"Anantapur"
2823	"Chittoor"
1201	"Tawang"
1202	"West Kameng"
1203	"East Kameng"
1204	"Papum Pare"
1205	"Lower Subansiri"
1206	"Upper Subansiri"
1207	"West Siang"
1208	"East Siang"
1209	"Upper Siang"
1210	"Dibang Valley"
1211	"Lohit"
1212	"Changlang"
1213	"Tirap"
1214	"Anjaw"
1215	"Kurungkumey"
1216	"Lower Dibang  Valley"
1812	"Lakshadweephimpur"
1813	"Dhemaji"
1814	"Tinsukia"
1815	"Dibrugarh"
1816	"Sibsagar"
1817	"Jorhat"
1818	"Golaghat"
1801	"Kokrajhar"
1802	"Dhubri"
1803	"Goalpara"
1804	"Bongaigaon"
1805	"Barpeta"
1806	"Kamrup"
1807	"Nalbari"
1819	"Karbi Anglong"
1820	"North Cachar Hills"
1821	"Cachar"
1822	"Karimganj"
1823	"HaiLakshadweepandi"
1808	"Darrang"
1809	"Marigaon"
1810	"Nagaon"
1811	"Sonitpur"
1824	"Chirang"
1825	"Baksa"
1826	"Guwahati"
1827	"Udalguri"
1001	"Champaran   (W)"
1002	"Champaran    (E)"
1003	"Sheohar"
1004	"Sitamarhi"
1005	"Madhubani"
1006	"Supaul"
1007	"Araria"
1008	"Kishanganj"
1009	"Purnia"
1010	"Katihar"
1011	"Madhepura"
1012	"Saharsa"
1013	"Darbhanga"
1014	"Muzaffarpur"
1015	"Gopalganj"
1016	"Siwan"
1017	"Saran"
1018	"Vaishali"
1019	"Samastipur"
1020	"Begusarai"
1021	"Khagaria"
1022	"Bhagalpur"
1023	"Banka"
1024	"Munger"
1025	"Lakshadweephisarai"
1026	"Sheikhpura"
1027	"Nalanda"
1028	"Patna"
1029	"Bhojpur"
1030	"Buxar"
1031	"Kaimur Bhabua"
1032	"Rohtas"
1033	"Jehanabad"
1034	"Aurangabad"
1035	"Gaya"
1036	"Nawada"
1037	"Jamui"
1038	"Arwal"
0401	"Chandigarh"
2201	"Koriya"
2202	"Surguja"
2203	"Jashpur"
2204	"Raigarh"
2205	"Korba"
2206	"Janjgir-Champa"
2207	"Bilaspur"
2208	"Kawardha"
2209	"Rajnandgaon"
2210	"Durg"
2211	" Raipur"
2212	"Mahasamund"
2213	"Dhamtari"
2214	"Kanker"
2215	"Bastar"
2216	"Dantewada"
2217	"Narayanpur"
2218	"Bijapur"
2601	"Dadra and Nagar Havelira &  NH"
2501	"Diu"
2502	"Daman"
0701	"North West"
0702	"North"
0703	"North East"
0704	"East"
0705	"New Delhi"
0706	"Central"
0707	"West"
0708	"South West"
0709	"South"
3001	"North Goa"
3002	"South Goa"
2417	"Panch Mahals"
2418	"Dohad"
2419	"Vadodara"
2420	"Narmada"
2421	"Bharuch"
2422	"Surat"
2423	"The Dangs"
2424	"Navsari"
2425	"Valsad"
2404	"Mahesana"
2405	"Sabar Kantha"
2406	"Gandhinagar"
2407	"Ahmedabad"
2415	"Anand"
2416	"Kheda"
2402	"Bans Kantha"
2403	"Patan"
2401	"Kachchh"
2408	"Surendranagar"
2409	"Rajkot"
2410	"Jamnagar"
2411	"Porbandar"
2412	"Junagadh"
2413	"Amreli"
2414	"Bhavnagar"
0601	"Panchkula"
0602	"Ambala"
0603	"Yamunanagar"
0604	"Kurukshetra"
0605	"Kaithal"
0606	"Karnal"
0607	"Panipat"
0608	"Sonipat"
0614	"Rohtak"
0615	"Jhajjar"
0618	"Gurgaon"
0619	"Faridabad"
0609	"Jind"
0610	"Fatehabad"
0611	"Sirsa"
0612	"Hisar"
0613	"Bhiwani"
0616	"Mahendragarh"
0617	"Rewari"
0620	"Mewat"
0202	"Kangra"
0204	"Kullu"
0205	"Mandi"
0206	"Hamirpur"
0207	"Una"
0201	"Chamba"
0203	"Lahul & Spiti"
0208	"Bilaspur"
0209	"Solan"
0210	"Sirmaur"
0211	"Shimla"
0212	"Kinnaur"
0113	"Jammu"
0114	"Kathua"
0109	"Doda"
0110	"Udhampur"
0111	"Punch"
0112	"Rajauri"
0101	"Kupwara"
0102	"Baramula"
0103	"Srinagar"
0104	"Badgam"
0105	"Pulwama"
0106	"Anantnag"
0107	"Leh* Ladakh"
0108	"Kargil*"
2001	"Garhwa"
2002	"Palamu"
2014	"Ranchi"
2015	"Lohardaga"
2016	"Gumla"
2017	"Singhbhum  (W)"
2018	"Singhbhum    (E)"
2003	"Chatra"
2004	"Hazaribag"
2005	"Kodarma"
2006	"Giridih"
2007	"Deoghar"
2008	"Godda"
2009	"Sahibganj"
2010	"Pakaur"
2011	"Dumka"
2012	"Dhanbad"
2013	"Bokaro"
2019	"Latehar"
2020	"Simdega"
2022	"Saraikela Khareswan"
2021	"Jamtara"
2910	"Uttara Kannada"
2916	"Udupi"
2924	"Dakshina Kannada"
2915	"Shimoga"
2917	"Chikmagalur"
2923	"Hassan"
2925	"Kodagu"
2918	"Tumkur"
2919	"Kolar"
2920	"Bangalore"
2921	"Bangalore Rural"
2922	"Mandya"
2926	"Mysore"
2928	"Ramanagar"
2929	"Chikkaballapura"
2927	"Chamarajanagar"
2901	"Belgaum"
2902	"Bagalkot"
2903	"Bijapur"
2904	"Gulbarga"
2905	"Bidar"
2906	"Raichur"
2907	"Koppal"
2908	"Gadag"
2909	"Dharwad"
2911	"Haveri"
2912	"Bellary"
2913	"Chitradurga"
2914	"Davanagere"
3201	"Kasaragod"
3202	"Kannur"
3203	"Wayanad"
3204	"Kozhikode"
3205	"Malappuram"
3206	"PaLakshadweepkad"
3207	"Thrissur"
3208	"Ernakulam"
3209	"Idukki"
3210	"Kottayam"
3211	"Alappuzha"
3212	"Pathanamthitta"
3213	"Kollam"
3214	"Thiruvananthapuram"
3101	"Lakshadweepshadweep"
2308	"Tikamgarh"
2309	"Chhatarpur"
2310	"Panna"
2313	"Satna"
2314	"Rewa"
2315	"Umaria"
2316	"Shahdol"
2317	"Sidhi"
2311	"Sagar"
2312	"Damoh"
2331	"Vidisha"
2332	"Bhopal"
2333	"Sehore"
2334	"Raisen"
2318	"Neemuch"
2319	"Mandsaur"
2320	"Ratlam"
2321	"Ujjain"
2322	"Shajapur"
2323	"Dewas"
2324	"Jhabua"
2325	"Dhar"
2326	"Indore"
2330	"Rajgarh"
2338	"Katni"
2339	"Jabalpur"
2340	"Narsimhapur"
2341	"Dindori"
2342	"Mandla"
2343	"Chhindwara"
2344	"Seoni"
2345	"Balaghat"
2327	"W. Nimar"
2328	"Barwani"
2329	"E. Nimar"
2335	"Betul"
2336	"Harda"
2337	"Hoshangabad"
2301	"Sheopur"
2302	"Morena"
2303	"Bhind"
2304	"Gwalior"
2305	"Datia"
2306	"Shivpuri"
2307	"Guna"
2347	"Anuppur"
2348	"Burhampur"
2349	"Alirajpur"
2350	"Singrauli"
2346	"Ashoknagar"
2721	"Thane"
2722	"Mumbai Suburban"
2723	"Mumbai"
2724	"Raigarh"
2732	"Ratnagiri"
2733	"Sindhudurg"
2725	"Pune"
2726	"Ahmadnagar"
2730	"Solapur"
2731	"Satara"
2734	"Kolhapur"
2735	"Sangli"
2701	"Nandurbar"
2702	"Dhule"
2703	"Jalgaon"
2720	"Nashik"
2715	"Nanded"
2716	"Hingoli"
2717	"Parbhani"
2718	"Jalna"
2719	"Aurangabad"
2727	"Bid"
2728	"Latur"
2729	"Osmanabad"
2704	"Buldana"
2705	"Akola"
2706	"Washim"
2708	"Wardha"
2709	"Nagpur"
2714	"Yavatmal"
2707	"Amravati"
2710	"Bhandara"
2711	"Gondiya"
2712	"Gadchiroli"
2713	"Chandrapur"
1404	"Bishnupur"
1405	"Thoubal"
1406	"Imphal West"
1407	"Imphal East"
1401	"Senapati"
1402	"Tamenglong"
1403	"Churachandpur"
1408	"Ukhrul"
1409	"Chandel"
1701	"West Garo Hills"
1702	"East Garo Hills"
1703	"South Garo Hills"
1704	"West Khasi Hills"
1705	"Ri Bhoi"
1706	"East Khasi Hills"
1707	"Jaintia Hills"
1501	"Mamit"
1502	"Kolasib"
1503	"Aizwal"
1504	"Champhai"
1505	"Serchip"
1506	"Lunglei"
1507	"Lawngtlai"
1508	"Saiha"
1301	"Mon"
1302	"Tuensang"
1303	"Mokokchung"
1304	"Zunheboto"
1305	"Wokha"
1306	"Dimapur"
1307	"Kohima"
1308	"Phek"
1309	"Kiphire"
1310	"Longleng"
1311	"Peren"
2108	"Baleshwar"
2109	"Bhadrak"
2110	"Kendrapara"
2111	"Jagatsinghapur"
2112	"Cuttack"
2113	"Jajapur"
2116	"Nayagarh"
2117	"Khordha"
2118	"Puri"
2119	"Ganjam"
2120	"Gajapati"
2121	"Kandhamal Phoolbani"
2122	"Baudh"
2123	"Sonapur"
2124	"Balangir"
2125	"Nuapada"
2126	"Kalahandi"
2127	"Rayagada"
2128	"Nabarangapur"
2129	"Koraput"
2130	"Malkangiri"
2101	"Bargarh"
2102	"Jharsuguda"
2103	"Sambalpur"
2104	"Debagarh"
2105	"Sundargarh"
2106	"Kendujhar"
2107	"Mayurbhanj"
2114	"Dhenkanal"
2115	"Anugul"
3401	"Yanam"
3402	"Pondicherry"
3403	"Mahe"
3404	"Karaikal"
0301	"Gurdaspur"
0302	"Amritsar"
0303	"Kapurthala"
0304	"Jalandhar"
0305	"Hoshiarpur"
0306	"Nawanshahr"
0307	"Rupnagar"
0308	"Fatehgarh Sahib"
0309	"Ludhiana"
0310	"Moga"
0311	"Firozpur"
0312	"Muktsar"
0313	"Faridkot"
0314	"Bathinda"
0315	"Mansa"
0316	"Sangrur"
0317	"Patiala"
0318	"S.A.S. nagar (Mohali) "
0319	"Barnala"
0320	"Tarn Taran"
0803	"Bikaner"
0815	"Jodhpur"
0816	"Jaisalmer"
0817	"Barmer"
0818	"Jalor"
0819	"Sirohi"
0820	"Pali"
0806	"Alwar"
0807	"Bharatpur"
0808	"Dhaulpur"
0809	"Karauli"
0810	"Sawai Madhopur"
0811	"Dausa"
0812	"Jaipur"
0821	"Ajmer"
0822	"Tonk"
0824	"Bhilwara"
0825	"Rajsamand"
0826	"Udaipur"
0827	"Dungarpur"
0828	"Banswara"
0823	"Bundi"
0829	"Chittaurgarh"
0830	"Kota"
0831	"Baran"
0832	"Jhalawar"
0801	"Ganganagar"
0802	"Hanumangarh"
0804	"Churu"
0805	"Jhunjhunun"
0813	"Sikar"
0814	"Nagaur"
1101	"North Mongam"
1102	"West Gyalshing"
1103	"South Nimachai"
1104	"East Gangtok"
3301	"Thiruvallur"
3302	"Chennai"
3303	"Kancheepuram"
3304	"Vellore"
3306	"Tiruvanamalai"
3307	"Viluppuram"
3318	"Cuddalore"
3314	"Karur"
3315	"Tiruchirappalli"
3316	"Perambalur"
3317	"Ariyalur"
3313	"Dindigul"
3323	"Sivaganga"
3324	"Madurai"
3325	"Theni"
3326	"Virudhunagar"
3319	"Nagapattinam"
3320	"Thiruvarur"
3321	"Thanjavur"
3322	"Pudukkottai"
3327	"Ramanathapuram"
3328	"Toothukudi"
3329	"Tirunelveli"
3330	"Kanniyakumari"
3305	"Dharmapuri"
3308	"Salem"
3309	"Namakkal"
3310	"Erode"
3311	"The Nilgiris"
3312	"Coimbatore"
3331	"Krishnagiri"
1601	"West Tripura"
1602	"South Tripura"
1603	"Dhalai"
1604	"North Tripura"
0901	"Saharanpur"
0902	"Muzaffarnagar"
0903	"Bijnor"
0904	"Moradabad"
0905	"Rampur"
0906	"J Phule Nagar"
0907	"Meerut"
0908	"Baghpat"
0909	"Ghaziabad"
0910	"G. Buddha Nagar"
0924	"Sitapur"
0925	"Hardoi"
0926	"Unnao"
0927	"Lucknow"
0928	"Rae Bareli"
0933	"Kanpur Dehat"
0934	"Kanpur Nagar"
0942	"Fatehpur"
0946	"Barabanki"
0943	"Pratapgarh"
0944	"Kaushambi"
0945	"Allahabad"
0947	"Faizabad"
0948	"Ambedkar Nag."
0949	"Sultanpur"
0950	"Bahraich"
0951	"Shrawasti"
0952	"Balrampur"
0953	"Gonda"
0954	"Siddharthnagar"
0955	"Basti"
0956	"S. Kabir Nagar"
0957	"Maharajganj"
0958	"Gorakhpur"
0959	"Kushinagar"
0960	"Deoria"
0961	"Azamgarh"
0962	"Mau"
0963	"Ballia"
0964	"Jaunpur"
0965	"Ghazipur"
0966	"Chandauli"
0967	"Varanasi"
0968	"S.R.Nagar Bhadoh"
0969	"Mirzapur"
0970	"Sonbhadra"
0971	"Kashiramnagar"
0935	"Jalaun"
0936	"Jhansi"
0937	"Lalitpur"
0938	"Hamirpur"
0939	"Mahoba"
0940	"Banda"
0941	"Chitrakoot"
0911	"Bulandshahr"
0912	"Aligarh"
0913	"Hathras"
0914	"Mathura"
0915	"Agra"
0916	"Firozabad"
0917	"Etah"
0918	"Mainpuri"
0919	"Budaun"
0920	"Bareilly"
0921	"Pilibhit"
0922	"Shahjahanpur"
0923	"Kheri"
0929	"Farrukhabad"
0930	"Kannauj"
0931	"Etawah"
0932	"Auraiya"
0501	"Uttarkashi"
0502	"Chamoli"
0503	"Rudraprayag"
0504	"Tehri Garhwal"
0505	"Dehradun (P)"
0506	"Garhwal"
0507	"Pithoragarh"
0508	"Bageshwar"
0509	"Almora"
0510	"Champawat"
0511	"Nainital (P)"
0512	"Udham Singh Nagar"
0513	"Hardwar"
0514	"Nainital (H)"
0515	"Dehradun (H)"
1901	"Darjiling"
1902	"Jalpaiguri"
1903	"Koch Bihar"
1904	"Uttar Dinajpur"
1905	"Dakshin Dinajpur"
1906	"Maldah"
1907	"Murshidabad"
1908	"Birbhum"
1910	"Nadia"
1911	"North 24-Parganas"
1917	"Kolkata"
1918	"South 24-Parganas"
1909	"Barddhaman"
1912	"Hugli"
1916	"Howrah"
1913	"Bankura"
1914	"Puruliya"
1915	"Paschim Midnapur"
1919	"Purba Midnapur" 
;

#delim  
