#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"
# ATMS="$($PSQL "ALTER TABLE properties RENAME weight TO atomic_mass")"
# echo $ATMS

# MELTING_PT="$($PSQL "ALTER TABLE properties RENAME melting_point TO melting_point_celsius")"
# echo $MELTING_PT

# BOILING_PT="$($PSQL "ALTER TABLE properties RENAME boiling_point TO boiling_point_celsius")"
# echo $BOILING_PT

# MELTING_PT_NN="$($PSQL "ALTER TABLE properties ALTER COLUMN melting_point_celsius SET NOT NULL")"
# echo $MELTING_PT_NN

# BOILING_PT_NN="$($PSQL "ALTER TABLE properties ALTER COLUMN boiling_point_celsius SET NOT NULL")"
# echo $BOILING_PT_NN

# NAME_UN="$($PSQL "ALTER TABLE elements ADD UNIQUE(name)")"
# echo $NAME_UN

# SYMBOL_UN="$($PSQL "ALTER TABLE elements ADD UNIQUE(symbol)")"
# echo $SYMBOL_UN

# SYMBOL_NN="$($PSQL "ALTER TABLE elements ALTER COLUMN symbol SET NOT NULL")"
# echo $SYMBOL_PT_NN

# NAME_NN="$($PSQL "ALTER TABLE elements ALTER COLUMN name SET NOT NULL")"
# echo $NAME_PT_NN

# ATM_FK="$($PSQL "ALTER TABLE properties ADD FOREIGN KEY(atomic_number) REFERENCES elements(atomic_number)")"
# echo $ATM_FK

# TYPE_CRE="$($PSQL "CREATE TABLE types(type_id int primary key, type varchar(30) not null)")"
# echo $TYPE_CRE

# INSERT_TYPE="$($PSQL "INSERT INTO types(type_id,type) VALUES(1,'nonmetal'),(2,'metal'), (3,'metalloid')") "
# echo $INSERT_TYPE

# PRO_TI="$($PSQL "ALTER TABLE properties ADD COLUMN type_id int")"
# echo $PRO_TI

# INSERT_TYPE_ID1="$($PSQL "UPDATE properties SET type_id = 1 WHERE type='nonmetal'")
# echo $INSERT_TYPE_ID1

# INSERT_TYPE_ID2="$($PSQL "UPDATE properties SET type_id = 2 WHERE type='metal'")
# echo $INSERT_TYPE_ID2

# INSERT_TYPE_ID3="$($PSQL "UPDATE properties SET type_id = 3 WHERE type='metalloid'")"
# echo $INSERT_TYPE_ID2

# PRO_TI_NN="$($PSQL "ALTER TABLE properties ALTER COLUMN type_id SET NOT NULL")"
# echo $PRO_TI_NN

# PRO_TI_FK="$($PSQL "ALTER TABLE properties ADD FOREIGN KEY(type_id) REFERENCES types(type_id)")"
# echo $PRO_TI_FK

# U_HE=$($PSQL "UPDATE elements SET symbol= 'He' WHERE symbol = 'he'")
# U_LI=$($PSQL "UPDATE elements SET symbol= 'Li' WHERE symbol = 'li'")
# U_MT=$($PSQL "UPDATE elements SET symbol= 'MT' WHERE symbol = 'mT'")

# U_TRAILING_ZEROS_ATM=$($PSQL "ALTER TABLE properties ALTER COLUMN atomic_mass TYPE REAL")
# echo $U_TRAILING_ZEROS_ATM
# INSERT_FE=$($PSQL "INSERT INTO elements(atomic_number, symbol, name) VALUES(9, 'F', 'Fluorine'), (10, 'Ne', 'Neon')")
# INSERT_F=$($PSQL "INSERT INTO properties(atomic_number, type, atomic_mass, melting_point_celsius, boiling_point_celsius, type_id) VALUES(9, 'nonmetal', 18.998, -220, -188.1, 1), (10, 'nonmetal', 20.18, -248.6, -246.1, 1)")
# DELETE_TYPE=$($PSQL "ALTER TABLE properties DROP COLUMN type")
