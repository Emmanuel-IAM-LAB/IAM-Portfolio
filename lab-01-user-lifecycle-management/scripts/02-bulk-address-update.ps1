# Lab 01: Bulk Address Update
# Tool: Microsoft Graph PowerShell SDK
# Description: Updates street address, city, state, zip and country for all 50 users

$domain = "Emmanueldamilare55outlook.onmicrosoft.com"

$updates = @(
    @{ UPN = "alex.carter@$domain";       Street = "412 Pine St";             City = "Seattle";        State = "WA"; Zip = "98101" }
    @{ UPN = "jordan.mills@$domain";      Street = "876 Michigan Ave";         City = "Chicago";        State = "IL"; Zip = "60611" }
    @{ UPN = "maya.reyes@$domain";        Street = "234 Congress Ave";         City = "Austin";         State = "TX"; Zip = "78701" }
    @{ UPN = "chris.evans@$domain";       Street = "1200 156th Ave NE";        City = "Bellevue";       State = "WA"; Zip = "98007" }
    @{ UPN = "dana.scott@$domain";        Street = "100 Peachtree St";         City = "Atlanta";        State = "GA"; Zip = "30303" }
    @{ UPN = "ethan.brooks@$domain";      Street = "333 N Central Ave";        City = "Phoenix";        State = "AZ"; Zip = "85004" }
    @{ UPN = "fiona.grant@$domain";       Street = "200 State St";             City = "Boston";         State = "MA"; Zip = "02109" }
    @{ UPN = "george.hall@$domain";       Street = "1600 Glenarm Pl";          City = "Denver";         State = "CO"; Zip = "80202" }
    @{ UPN = "hannah.kim@$domain";        Street = "1 Market St";              City = "San Francisco";  State = "CA"; Zip = "94105" }
    @{ UPN = "ivan.lopez@$domain";        Street = "110 E Houston St";         City = "San Antonio";    State = "TX"; Zip = "78205" }
    @{ UPN = "jessica.moore@$domain";     Street = "1 SW Columbia St";         City = "Portland";       State = "OR"; Zip = "97258" }
    @{ UPN = "kevin.nash@$domain";        Street = "400 S 4th St";             City = "Las Vegas";      State = "NV"; Zip = "89101" }
    @{ UPN = "laura.owen@$domain";        Street = "421 Fayetteville St";      City = "Raleigh";        State = "NC"; Zip = "27601" }
    @{ UPN = "marcus.price@$domain";      Street = "1001 Woodward Ave";        City = "Detroit";        State = "MI"; Zip = "48226" }
    @{ UPN = "nina.quinn@$domain";        Street = "315 Deaderick St";         City = "Nashville";      State = "TN"; Zip = "37238" }
    @{ UPN = "oscar.reed@$domain";        Street = "100 Light St";             City = "Baltimore";      State = "MD"; Zip = "21202" }
    @{ UPN = "paula.stone@$domain";       Street = "800 5th Ave";              City = "Seattle";        State = "WA"; Zip = "98104" }
    @{ UPN = "quinn.taylor@$domain";      Street = "500 N Akard St";           City = "Dallas";         State = "TX"; Zip = "75201" }
    @{ UPN = "rachel.upton@$domain";      Street = "90 S 7th St";              City = "Minneapolis";    State = "MN"; Zip = "55402" }
    @{ UPN = "samuel.vance@$domain";      Street = "400 N Ashley Dr";          City = "Tampa";          State = "FL"; Zip = "33602" }
    @{ UPN = "tina.walsh@$domain";        Street = "600 University St";        City = "Seattle";        State = "WA"; Zip = "98101" }
    @{ UPN = "ulric.xavier@$domain";      Street = "201 3rd St NW";            City = "Albuquerque";    State = "NM"; Zip = "87102" }
    @{ UPN = "vera.young@$domain";        Street = "6 N 2nd St";               City = "Memphis";        State = "TN"; Zip = "38103" }
    @{ UPN = "walter.zane@$domain";       Street = "1001 E Broad St";          City = "Richmond";       State = "VA"; Zip = "23219" }
    @{ UPN = "xena.abbott@$domain";       Street = "625 C St";                 City = "Anchorage";      State = "AK"; Zip = "99501" }
    @{ UPN = "yusuf.baker@$domain";       Street = "60 E South Temple";        City = "Salt Lake City"; State = "UT"; Zip = "84111" }
    @{ UPN = "zoe.clark@$domain";         Street = "130 N Market St";          City = "Wichita";        State = "KS"; Zip = "67202" }
    @{ UPN = "aaron.davis@$domain";       Street = "400 W Market St";          City = "Louisville";     State = "KY"; Zip = "40202" }
    @{ UPN = "brianna.ellis@$domain";     Street = "1 First National Plz";     City = "Omaha";          State = "NE"; Zip = "68102" }
    @{ UPN = "carlos.flores@$domain";     Street = "254 Munoz Rivera Ave";     City = "San Juan";       State = "PR"; Zip = "00918" }
    @{ UPN = "diana.green@$domain";       Street = "1 Aloha Tower Dr";         City = "Honolulu";       State = "HI"; Zip = "96813" }
    @{ UPN = "edward.harris@$domain";     Street = "800 E Dimond Blvd";        City = "Anchorage";      State = "AK"; Zip = "99515" }
    @{ UPN = "faith.jackson@$domain";     Street = "200 S Lamar St";           City = "Jackson";        State = "MS"; Zip = "39201" }
    @{ UPN = "gary.king@$domain";         Street = "600 Dexter Ave";           City = "Montgomery";     State = "AL"; Zip = "36104" }
    @{ UPN = "helen.lee@$domain";         Street = "111 SW 5th Ave";           City = "Portland";       State = "OR"; Zip = "97204" }
    @{ UPN = "isaac.martinez@$domain";    Street = "101 W Hadley Ave";         City = "Las Cruces";     State = "NM"; Zip = "88001" }
    @{ UPN = "julia.nelson@$domain";      Street = "500 E Capitol Ave";        City = "Pierre";         State = "SD"; Zip = "57501" }
    @{ UPN = "kyle.owen@$domain";         Street = "600 E Boulevard Ave";      City = "Bismarck";       State = "ND"; Zip = "58505" }
    @{ UPN = "lisa.parker@$domain";       Street = "301 S Park Ave";           City = "Helena";         State = "MT"; Zip = "59601" }
    @{ UPN = "michael.quinn@$domain";     Street = "200 W 24th St";            City = "Cheyenne";       State = "WY"; Zip = "82001" }
    @{ UPN = "nancy.roberts@$domain";     Street = "700 W State St";           City = "Boise";          State = "ID"; Zip = "83702" }
    @{ UPN = "omar.stevens@$domain";      Street = "400 W King St";            City = "Carson City";    State = "NV"; Zip = "89703" }
    @{ UPN = "patricia.turner@$domain";   Street = "416 Washington St";        City = "Olympia";        State = "WA"; Zip = "98501" }
    @{ UPN = "raymond.underwood@$domain"; Street = "350 Main St";              City = "Fairbanks";      State = "AK"; Zip = "99701" }
    @{ UPN = "sandra.vasquez@$domain";    Street = "1 International Blvd";     City = "Laredo";         State = "TX"; Zip = "78041" }
    @{ UPN = "thomas.ward@$domain";       Street = "301 Calista Ct";           City = "Anchorage";      State = "AK"; Zip = "99518" }
    @{ UPN = "uma.xavier@$domain";        Street = "677 Ala Moana Blvd";       City = "Honolulu";       State = "HI"; Zip = "96813" }
    @{ UPN = "victor.young@$domain";      Street = "310 W Wisconsin Ave";      City = "Milwaukee";      State = "WI"; Zip = "53203" }
    @{ UPN = "wendy.zhang@$domain";       Street = "1 S Pinckney St";          City = "Madison";        State = "WI"; Zip = "53703" }
    @{ UPN = "xavier.adams@$domain";      Street = "500 L St";                 City = "Anchorage";      State = "AK"; Zip = "99501" }
)

foreach ($u in $updates) {
    Update-MgUser -UserId $u.UPN -StreetAddress $u.Street -City $u.City -State $u.State -PostalCode $u.Zip -Country "US"
    Write-Host "Updated address: $($u.UPN)"
}
