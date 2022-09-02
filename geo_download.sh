#


accessions=(
    "GSM4475127"
    "GSM4475128"
    "GSM4475129"
    "GSM4475130"
    "GSM4475131"
    "GSM4475132"
    "GSM4475133"
    "GSM4475134"
    "GSM4475135"
    "GSM4475136"
    "GSM4475137"
    "GSM4475138"
)

annots=(
    "Female_saline_1"
    "Male_saline_1"
    "Female_saline_2"
    "Male_saline_2"
    "Female_saline_3"
    "Male_saline_3"
    "Female_LPS_1"
    "Male_LPS_1"
    "Female_LPS_2"
    "Male_LPS_2"
    "Female_LPS_3"
    "Male_LPS_3"
)

for i in ${!accessions[@]}; do
    acc=${accessions[$i]}
    ann=${annots[$i]}
    echo $i, $acc, $ann

    #"https://ftp.ncbi.nlm.nih.gov/geo/samples/GSM4475nnn/GSM4475127/suppl/GSM4475127_Female_saline_1_barcodes.tsv.gz"

    f="https://ftp.ncbi.nlm.nih.gov/geo/samples/GSM4475nnn/${acc}/suppl/${acc}_${ann}_barcodes.tsv.gz"
    wget $f
    f="https://ftp.ncbi.nlm.nih.gov/geo/samples/GSM4475nnn/${acc}/suppl/${acc}_${ann}_features.tsv.gz"
    wget $f
    f="https://ftp.ncbi.nlm.nih.gov/geo/samples/GSM4475nnn/${acc}/suppl/${acc}_${ann}_matrix.mtx.gz"
    wget $f
done