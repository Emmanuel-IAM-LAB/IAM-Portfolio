# Lab 01: Bulk User Creation
# Tool: Microsoft Graph PowerShell SDK
# Description: Creates 50 realistic users across 25+ US states with full identity attributes

$domain = "Emmanueldamilare55outlook.onmicrosoft.com"

$users = @(
    @{ DisplayName = "Alex Carter";      JobTitle = "SOC Analyst";            Department = "Security Operations"; EmployeeId = "NXT-10045"; Phone = "206-555-0101"; Street = "412 Pine St";        City = "Seattle";       State = "WA"; Zip = "98101" }
    @{ DisplayName = "Jordan Mills";     JobTitle = "IT Support Specialist";   Department = "IT";                  EmployeeId = "NXT-10046"; Phone = "312-555-0102"; Street = "876 Michigan Ave";    City = "Chicago";       State = "IL"; Zip = "60611" }
    @{ DisplayName = "Maya Reyes";       JobTitle = "Security Manager";        Department = "Security Operations"; EmployeeId = "NXT-10047"; Phone = "512-555-0103"; Street = "234 Congress Ave";    City = "Austin";        State = "TX"; Zip = "78701" }
    @{ DisplayName = "Chris Evans";      JobTitle = "Cloud Engineer";          Department = "Infrastructure";      EmployeeId = "NXT-10048"; Phone = "425-555-0104"; Street = "1200 156th Ave NE";   City = "Bellevue";      State = "WA"; Zip = "98007" }
    @{ DisplayName = "Dana Scott";       JobTitle = "IAM Analyst";             Department = "Identity & Access";   EmployeeId = "NXT-10049"; Phone = "404-555-0105"; Street = "100 Peachtree St";    City = "Atlanta";       State = "GA"; Zip = "30303" }
    @{ DisplayName = "Ethan Brooks";     JobTitle = "Helpdesk Technician";     Department = "IT Support";          EmployeeId = "NXT-10050"; Phone = "602-555-0106"; Street = "333 N Central Ave";   City = "Phoenix";       State = "AZ"; Zip = "85004" }
    @{ DisplayName = "Fiona Grant";      JobTitle = "Compliance Analyst";      Department = "GRC";                 EmployeeId = "NXT-10051"; Phone = "617-555-0107"; Street = "200 State St";        City = "Boston";        State = "MA"; Zip = "02109" }
    @{ DisplayName = "George Hall";      JobTitle = "Network Engineer";        Department = "Infrastructure";      EmployeeId = "NXT-10052"; Phone = "720-555-0108"; Street = "1600 Glenarm Pl";     City = "Denver";        State = "CO"; Zip = "80202" }
    @{ DisplayName = "Hannah Kim";       JobTitle = "DevOps Engineer";         Department = "Engineering";         EmployeeId = "NXT-10053"; Phone = "415-555-0109"; Street = "1 Market St";         City = "San Francisco"; State = "CA"; Zip = "94105" }
    @{ DisplayName = "Ivan Lopez";       JobTitle = "Penetration Tester";      Department = "Red Team";            EmployeeId = "NXT-10054"; Phone = "210-555-0110"; Street = "110 E Houston St";    City = "San Antonio";   State = "TX"; Zip = "78205" }
    @{ DisplayName = "Jessica Moore";    JobTitle = "Risk Analyst";            Department = "GRC";                 EmployeeId = "NXT-10055"; Phone = "503-555-0111"; Street = "1 SW Columbia St";    City = "Portland";      State = "OR"; Zip = "97258" }
    @{ DisplayName = "Kevin Nash";       JobTitle = "Systems Administrator";   Department = "IT";                  EmployeeId = "NXT-10056"; Phone = "702-555-0112"; Street = "400 S 4th St";        City = "Las Vegas";     State = "NV"; Zip = "89101" }
    @{ DisplayName = "Laura Owen";       JobTitle = "Data Analyst";            Department = "Business Intelligence"; EmployeeId = "NXT-10057"; Phone = "919-555-0113"; Street = "421 Fayetteville St"; City = "Raleigh";     State = "NC"; Zip = "27601" }
    @{ DisplayName = "Marcus Price";     JobTitle = "SOC Analyst";             Department = "Security Operations"; EmployeeId = "NXT-10058"; Phone = "313-555-0114"; Street = "1001 Woodward Ave";   City = "Detroit";       State = "MI"; Zip = "48226" }
    @{ DisplayName = "Nina Quinn";       JobTitle = "HR Manager";              Department = "Human Resources";     EmployeeId = "NXT-10059"; Phone = "615-555-0115"; Street = "315 Deaderick St";    City = "Nashville";     State = "TN"; Zip = "37238" }
    @{ DisplayName = "Oscar Reed";       JobTitle = "Finance Analyst";         Department = "Finance";             EmployeeId = "NXT-10060"; Phone = "443-555-0116"; Street = "100 Light St";        City = "Baltimore";     State = "MD"; Zip = "21202" }
    @{ DisplayName = "Paula Stone";      JobTitle = "Cloud Architect";         Department = "Infrastructure";      EmployeeId = "NXT-10061"; Phone = "206-555-0117"; Street = "800 5th Ave";         City = "Seattle";       State = "WA"; Zip = "98104" }
    @{ DisplayName = "Quinn Taylor";     JobTitle = "IT Manager";              Department = "IT";                  EmployeeId = "NXT-10062"; Phone = "214-555-0118"; Street = "500 N Akard St";      City = "Dallas";        State = "TX"; Zip = "75201" }
    @{ DisplayName = "Rachel Upton";     JobTitle = "Security Analyst";        Department = "Security Operations"; EmployeeId = "NXT-10063"; Phone = "612-555-0119"; Street = "90 S 7th St";         City = "Minneapolis";   State = "MN"; Zip = "55402" }
    @{ DisplayName = "Samuel Vance";     JobTitle = "Application Developer";   Department = "Engineering";         EmployeeId = "NXT-10064"; Phone = "813-555-0120"; Street = "400 N Ashley Dr";     City = "Tampa";         State = "FL"; Zip = "33602" }
    @{ DisplayName = "Tina Walsh";       JobTitle = "IAM Engineer";            Department = "Identity & Access";   EmployeeId = "NXT-10065"; Phone = "206-555-0121"; Street = "600 University St";   City = "Seattle";       State = "WA"; Zip = "98101" }
    @{ DisplayName = "Ulric Xavier";     JobTitle = "Helpdesk Technician";     Department = "IT Support";          EmployeeId = "NXT-10066"; Phone = "505-555-0122"; Street = "201 3rd St NW";       City = "Albuquerque";   State = "NM"; Zip = "87102" }
    @{ DisplayName = "Vera Young";       JobTitle = "Compliance Manager";      Department = "GRC";                 EmployeeId = "NXT-10067"; Phone = "901-555-0123"; Street = "6 N 2nd St";          City = "Memphis";       State = "TN"; Zip = "38103" }
    @{ DisplayName = "Walter Zane";      JobTitle = "SOC Lead";                Department = "Security Operations"; EmployeeId = "NXT-10068"; Phone = "804-555-0124"; Street = "1001 E Broad St";     City = "Richmond";      State = "VA"; Zip = "23219" }
    @{ DisplayName = "Xena Abbott";      JobTitle = "Cloud Engineer";          Department = "Infrastructure";      EmployeeId = "NXT-10069"; Phone = "907-555-0125"; Street = "625 C St";            City = "Anchorage";     State = "AK"; Zip = "99501" }
    @{ DisplayName = "Yusuf Baker";      JobTitle = "Risk Manager";            Department = "GRC";                 EmployeeId = "NXT-10070"; Phone = "801-555-0126"; Street = "60 E South Temple";   City = "Salt Lake City"; State = "UT"; Zip = "84111" }
    @{ DisplayName = "Zoe Clark";        JobTitle = "Network Analyst";         Department = "Infrastructure";      EmployeeId = "NXT-10071"; Phone = "316-555-0127"; Street = "130 N Market St";     City = "Wichita";       State = "KS"; Zip = "67202" }
    @{ DisplayName = "Aaron Davis";      JobTitle = "Systems Engineer";        Department = "IT";                  EmployeeId = "NXT-10072"; Phone = "502-555-0128"; Street = "400 W Market St";     City = "Louisville";    State = "KY"; Zip = "40202" }
    @{ DisplayName = "Brianna Ellis";    JobTitle = "Security Engineer";       Department = "Security Operations"; EmployeeId = "NXT-10073"; Phone = "402-555-0129"; Street = "1 First National Plz"; City = "Omaha";        State = "NE"; Zip = "68102" }
    @{ DisplayName = "Carlos Flores";    JobTitle = "IAM Analyst";             Department = "Identity & Access";   EmployeeId = "NXT-10074"; Phone = "787-555-0130"; Street = "254 Munoz Rivera Ave"; City = "San Juan";      State = "PR"; Zip = "00918" }
    @{ DisplayName = "Diana Green";      JobTitle = "Security Architect";      Department = "Security Operations"; EmployeeId = "NXT-10075"; Phone = "808-555-0131"; Street = "1 Aloha Tower Dr";    City = "Honolulu";      State = "HI"; Zip = "96813" }
    @{ DisplayName = "Edward Harris";    JobTitle = "Cloud Security Engineer"; Department = "Security Operations"; EmployeeId = "NXT-10076"; Phone = "907-555-0132"; Street = "800 E Dimond Blvd";   City = "Anchorage";     State = "AK"; Zip = "99515" }
    @{ DisplayName = "Faith Jackson";    JobTitle = "IT Auditor";              Department = "GRC";                 EmployeeId = "NXT-10077"; Phone = "601-555-0133"; Street = "200 S Lamar St";      City = "Jackson";       State = "MS"; Zip = "39201" }
    @{ DisplayName = "Gary King";        JobTitle = "Database Administrator";  Department = "IT";                  EmployeeId = "NXT-10078"; Phone = "334-555-0134"; Street = "600 Dexter Ave";      City = "Montgomery";    State = "AL"; Zip = "36104" }
    @{ DisplayName = "Helen Lee";        JobTitle = "Product Manager";         Department = "Engineering";         EmployeeId = "NXT-10079"; Phone = "503-555-0135"; Street = "111 SW 5th Ave";      City = "Portland";      State = "OR"; Zip = "97204" }
    @{ DisplayName = "Isaac Martinez";   JobTitle = "Threat Intelligence Analyst"; Department = "Red Team";        EmployeeId = "NXT-10080"; Phone = "575-555-0136"; Street = "101 W Hadley Ave";    City = "Las Cruces";    State = "NM"; Zip = "88001" }
    @{ DisplayName = "Julia Nelson";     JobTitle = "HR Specialist";           Department = "Human Resources";     EmployeeId = "NXT-10081"; Phone = "605-555-0137"; Street = "500 E Capitol Ave";   City = "Pierre";        State = "SD"; Zip = "57501" }
    @{ DisplayName = "Kyle Owen";        JobTitle = "Finance Manager";         Department = "Finance";             EmployeeId = "NXT-10082"; Phone = "701-555-0138"; Street = "600 E Boulevard Ave";  City = "Bismarck";      State = "ND"; Zip = "58505" }
    @{ DisplayName = "Lisa Parker";      JobTitle = "Endpoint Security Engineer"; Department = "Security Operations"; EmployeeId = "NXT-10083"; Phone = "406-555-0139"; Street = "301 S Park Ave";  City = "Helena";        State = "MT"; Zip = "59601" }
    @{ DisplayName = "Michael Quinn";    JobTitle = "Site Reliability Engineer"; Department = "Engineering";       EmployeeId = "NXT-10084"; Phone = "307-555-0140"; Street = "200 W 24th St";      City = "Cheyenne";      State = "WY"; Zip = "82001" }
    @{ DisplayName = "Nancy Roberts";    JobTitle = "Vendor Risk Analyst";     Department = "GRC";                 EmployeeId = "NXT-10085"; Phone = "208-555-0141"; Street = "700 W State St";      City = "Boise";         State = "ID"; Zip = "83702" }
    @{ DisplayName = "Omar Stevens";     JobTitle = "IAM Operations Analyst";  Department = "Identity & Access";   EmployeeId = "NXT-10086"; Phone = "775-555-0142"; Street = "400 W King St";      City = "Carson City";   State = "NV"; Zip = "89703" }
    @{ DisplayName = "Patricia Turner";  JobTitle = "Business Analyst";        Department = "Business Intelligence"; EmployeeId = "NXT-10087"; Phone = "360-555-0143"; Street = "416 Washington St"; City = "Olympia";       State = "WA"; Zip = "98501" }
    @{ DisplayName = "Raymond Underwood"; JobTitle = "SOC Manager";            Department = "Security Operations"; EmployeeId = "NXT-10088"; Phone = "907-555-0144"; Street = "350 Main St";        City = "Fairbanks";     State = "AK"; Zip = "99701" }
    @{ DisplayName = "Sandra Vasquez";   JobTitle = "Cybersecurity Analyst";   Department = "Security Operations"; EmployeeId = "NXT-10089"; Phone = "956-555-0145"; Street = "1 International Blvd"; City = "Laredo";      State = "TX"; Zip = "78041" }
    @{ DisplayName = "Thomas Ward";      JobTitle = "Network Security Engineer"; Department = "Infrastructure";    EmployeeId = "NXT-10090"; Phone = "907-555-0146"; Street = "301 Calista Ct";      City = "Anchorage";     State = "AK"; Zip = "99518" }
    @{ DisplayName = "Uma Xavier";       JobTitle = "Incident Response Analyst"; Department = "Security Operations"; EmployeeId = "NXT-10091"; Phone = "808-555-0147"; Street = "677 Ala Moana Blvd"; City = "Honolulu";    State = "HI"; Zip = "96813" }
    @{ DisplayName = "Victor Young";     JobTitle = "Systems Analyst";         Department = "IT";                  EmployeeId = "NXT-10092"; Phone = "414-555-0148"; Street = "310 W Wisconsin Ave";  City = "Milwaukee";     State = "WI"; Zip = "53203" }
    @{ DisplayName = "Wendy Zhang";      JobTitle = "Data Engineer";           Department = "Engineering";         EmployeeId = "NXT-10093"; Phone = "608-555-0149"; Street = "1 S Pinckney St";     City = "Madison";       State = "WI"; Zip = "53703" }
    @{ DisplayName = "Xavier Adams";     JobTitle = "Zero Trust Architect";    Department = "Identity & Access";   EmployeeId = "NXT-10094"; Phone = "907-555-0150"; Street = "500 L St";            City = "Anchorage";     State = "AK"; Zip = "99501" }
)

foreach ($user in $users) {
    $firstName = $user.DisplayName.Split(" ")[0].ToLower()
    $lastName  = $user.DisplayName.Split(" ")[1].ToLower()
    $upn       = "$firstName.$lastName@$domain"

    $params = @{
        DisplayName       = $user.DisplayName
        UserPrincipalName = $upn
        MailNickname      = "$firstName$lastName"
        JobTitle          = $user.JobTitle
        Department        = $user.Department
        EmployeeId        = $user.EmployeeId
        MobilePhone       = $user.Phone
        BusinessPhones    = @($user.Phone)
        OfficeLocation    = "$($user.City), $($user.State)"
        AccountEnabled    = $true
        PasswordProfile   = @{
            Password                      = "TempPass@2024!"
            ForceChangePasswordNextSignIn = $true
        }
    }

    New-MgUser -BodyParameter $params
    Write-Host "Created: $($user.DisplayName) | $($user.EmployeeId) | $($user.City), $($user.State)"
}
