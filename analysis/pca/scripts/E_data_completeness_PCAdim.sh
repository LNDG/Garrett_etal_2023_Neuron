#!/bin/bash

#N162
SUBJECTS="001 003 006 007 008 009 010 013 014 015 016 017 018 019 021 022 024 025 027 028 029 030 032 034 035 036 038 040 041 043 045 046 049 050 051 052 053 056 057 058 059 060 061 063 064 065 066 067 068 069 071 072 073 074 075 076 079 080 081 082 084 085 087 090 091 092 093 094 095 097 099 104 105 106 107 108 109 110 112 113 114 116 117 118 119 120 121 122 123 126 127 130 131 133 134 135 136 137 138 139 140 143 144 146 148 149 150 152 153 154 155 156 158 159 160 161 162 163 164 165 168 169 170 172 173 174 176 177 178 180 181 183 184 185 186 187 188 190 191 192 193 194 195 196 197 198 199 200 201 203 204 206 208 210 211 212 213 214 216 217 219 220"


WD="DIR"


#create and submit job to grid 
for ID in ${SUBJECTS}; do
	for PCAdim in spatial; do	
		if [ -f ${WD}/${PCAdim}_PCA/C${ID}_PCAdim_${PCAdim}_4Vincentnetworks.mat ]; then
			echo 
		else
			echo "${ID}: ${PCAdim}"
		fi
	done
done

#create and submit job to grid 
for ID in ${SUBJECTS}; do
	for PCAdim in temporal; do	
		if [ -f ${WD}/${PCAdim}_PCA/C${ID}_PCAdim_${PCAdim}_4Vincentnetworks.mat ]; then
			echo 
		else
			echo "${ID}: ${PCAdim}"
		fi
	done
done