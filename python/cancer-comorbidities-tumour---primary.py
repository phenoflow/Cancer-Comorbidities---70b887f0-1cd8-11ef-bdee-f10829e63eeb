# Romi Haas, Ljoudmila Busija, Alexandra Gorelik, Denise A O'Connor, Christopher Pierce, Danielle Mazza, Rochelle Buchbinder, 2024.

import sys, csv, re

codes = [{"code":"363507003","system":"snomedct"},{"code":"363358000","system":"snomedct"},{"code":"363492001","system":"snomedct"},{"code":"363403002","system":"snomedct"},{"code":"359987004","system":"snomedct"},{"code":"363508008","system":"snomedct"},{"code":"369850009","system":"snomedct"},{"code":"10438002","system":"snomedct"},{"code":"363402007","system":"snomedct"},{"code":"254935002","system":"snomedct"},{"code":"255046005","system":"snomedct"},{"code":"115239009","system":"snomedct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-comorbidities-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cancer-comorbidities-tumour---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cancer-comorbidities-tumour---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cancer-comorbidities-tumour---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
