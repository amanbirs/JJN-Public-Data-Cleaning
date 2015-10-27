********************************************************************** 
* Date created: 12th, October 2015
* author: Amanbir Singh, amanbir.s@gmail.com, amanbirsingh@justjobsnetwork.org
* 
* currently maintained by:
* Amanbir Singh, amanbir.s@gmail.com, amanbirsingh@justjobsnetwork.org
*
*
* 
* 
* 
* Date last edited: 14th, October 2015
********************************************************************** 

set more off

* location of data folder
cd "$jjn_folder/Data/"


****** saving file for states and districts in India
insheet using "$jjn_folder/Data/india_state_codes.csv", names clear
save "$jjn_folder/Data/india_state_codes.dta", replace

insheet using "$jjn_folder/Data/india_district_codes.csv", names clear
save "$jjn_folder/Data/india_district_codes.dta", replace


******* For India data, set all state files to have the same name and codes
foreach i in "District Wise Number of NSDC Training Centres_150804" "Number of schools with VE" ///
"Statewise Distribution of ITIs and Seating Capacity_2013" "census_statewise population_2001_2011" ///
"statewise_age distribution_india" "census_perc_rural_pop_2011" ///
"Gross State Domestic Product at Constant 2004-05 Prices (in Rs. Crore)" ///
"Growth (YoY) Per Capita Net State Domestic Product at Constant (2004-05) Prices" ///
"census_india_2011_population" "census_india_age_wise_population_2011" ///
"Statewise Distribution of ITIs and Seating Capacity_2014" ///
"Combined Finance and Revenue Accounts_India_05 06_10 11" {
*"DDU-GKY Special Projects_150717"
	insheet using "./Raw Data/`i'.csv", names clear

	* renaming the state variable to state	
	cap ren nameofstateuts state
	cap ren states state
	cap gen state = ""
	
	replace state = proper(state)
	
	* Standardising the state names
	replace state = "Arunachal Pradesh" if state == "Arunachal"
	replace state = "Arunachal Pradesh" if state == "Arunchal Pradesh"

	replace state = "A And N Islands" if state == "A & N Island"
	replace state = "A And N Islands" if state == "A & N Islands"
	
	replace state = "Andhra Pradesh" if state == "Ap"
	
	replace state = "Chhattisgarh" if state == "Chattisgarh"
	replace state = "Chhattisgarh" if state == "Chattishgarh"
	
	replace state = "D And N Haveli" if state == "D & N Haveli"
	replace state = "D And N Haveli" if state == "D&N Haveli"
	replace state = "D And N Haveli" if state == "D & NÊ Haveli"
	
	replace state = "Daman And Diu" if state == "Daman & Diu"
	
	replace state = "Himachal Pradesh" if state == "Hp"
		
	replace state = "Jammu And Kashmir" if state == "J & K"
	replace state = "Jammu And Kashmir" if state == "Jammu & Kashmir"

	replace state = "Odisha" if state == "Orissa"
		
	replace state = "Pondicherry" if state == "Puducherry"
	replace state = "Pondicherry" if state == "Poducherry"

	replace state = "Madhya Pradesh" if state == "Madhaya Pradesh"
	replace state = "Madhya Pradesh" if state == "Mp"
	
	replace state = "Maharashtra" if state == "Maha rashtra"
	replace state = "Maharashtra" if state == "Maha Rashtra"
	
	replace state = "Uttarakhand" if state == "Uttrakhand"	
	
	replace state = "Uttar Pradesh" if state == "Up"
		
	
	replace state = "India" if state == "Total" 
	replace state = "India" if state == "All-India"
	replace state = "India" if state == "All India"
	replace state = "India" if state == "Union Governemt"
	replace state = "India" if state == "Union Government"


	* Number of schools with VE file
	if "`i'" == "Number of schools with VE" {
		ren v2 tvet_schools_approved_14_15
		ren v3 tvet_schools_approved_13_14
		ren v4 tvet_schools_approved_12_13
		ren v5 tvet_schools_approved_11_12
	
		ren total tvet_schools_approved_total
	}
	
	* Statewise Distribution of ITIs and Seating Capacity file
	if "`i'" == "Statewise Distribution of ITIs and Seating Capacity_2013" {
		ren totalseatingcapacity totalseatingcapacity_iti

		foreach j in numberofgovtitis seatingcapacitygovt numberofpvtitis seatingcapacitypvt totalitis totalseatingcapacity {
			ren `j' `j'_2013
		}
		
		replace region = "SOUTHERN REGION" if region == "SOUTHERN  REGION"
		encode region, gen(region_code)
	}
	
	* census_statewise population_2001_2011 file
	if "`i'" == "census_statewise population_2001_2011" {
		foreach j in rural_2001 urban_2001 total_2001 rural_2011 urban_2011 total_2011 {
			replace `j' = subinstr(`j', ",", "", .)
			ren `j' population_`j'
		}
	}
	
	
	* statewise_age distribution_india file
	if "`i'" == "statewise_age distribution_india" {
		foreach j in rural_below_10 rural_10_19 rural_20_39 rural_40_59 rural_60_79 rural_80_above rural_all urban_below_10 urban_10_19 urban_20_39 urban_40_59 urban_60_79 urban_80_above {
			ren `j' perc_pop_`j'
		}
	}
	
	
	* Gross State Domestic Product at Constant 2004-05 Prices (in Rs. Crore)
	if "`i'" == "Gross State Domestic Product at Constant 2004-05 Prices (in Rs. Crore)" {
		foreach j in v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 {
			replace `j' = subinstr(`j', ",", "", .)
			destring _all, replace
			ren `j' gsdp_`j'
		}
	}
	
	
	* 2011 population by state for India
	if "`i'" == "census_india_age_wise_population_2011" {
		replace state = subinstr(state, "State - ", "", .)
		replace state = substr(state, 1, length(state) - 5) if state !="India"
		
		replace state = "A And N Islands" if state == "Andaman & Nicobar Islands"
		replace state = "D And N Haveli" if state == "Dadra & Nagar Haveli"
		replace state = "Daman And Diu" if state == "Daman & Diu"
		replace state = "Jammu And Kashmir" if state == "Jammu & Kashmir"
		replace state = "Lakshdweep" if state == "Lakshadweep"
		replace state = "Delhi" if state == "Nct Of Delhi"
		replace state = "Pondicherry" if state == "Puducherry"
		
		replace state_code = 999 if state == "India"
		
		destring age, replace
	}
	
	
	* ITI seating capacity for 2014
	if "`i'" == "Statewise Distribution of ITIs and Seating Capacity_2014" {
		replace seatingcapacitygovt = totalseatingcapacity - seatingcapacitypvt
		
		foreach j in numberofgovtitis seatingcapacitygovt numberofpvtitis seatingcapacitypvt totalitis totalseatingcapacity {
			ren `j' `j'_2014
		}

		
		replace region = "SOUTHERN REGION" if region == "SOUTHERN  REGION"
		replace region = "NORTHERN REGION" if region == "NORTHERN  REGION"
		encode region, gen(region_code)
	}
	
*	if "`i'" == "DDU-GKY Special Projects_150717" {
*		break
*	}

	* CFRA Data from 05-06 to 10-11
	if "`i'" ==	"Combined Finance and Revenue Accounts_India_05 06_10 11" {
		replace st_code = 999 if st_code == 40
		destring amt, replace
		
		ren st_code state_code
		drop state
		
		merge m:1 state_code using "$jjn_folder/Data/india_state_codes.dta"
		
		assert _merge == 3 | _merge == 2
		drop if _merge == 2
		drop _merge
	}


	*  merging with state code dataset
	noisily merge m:1 state using "$jjn_folder/Data/india_state_codes.dta"
	
	
	* checking if all the state names have been made to match the state codes file
	assert _merge == 3 | _merge == 2
	drop if _merge == 2
	drop _merge

	quietly do "$jjn_folder/Data/Stata Do-Files/india_state_district_labels.do"
	cap label values state_code state_codes
	cap label values district_code district_codes
		
	destring _all, replace
	
		
	save "./Cleaned Data/`i'.dta", replace
	outsheet using "./Cleaned Data/`i'.csv", comma nolabel replace
}





