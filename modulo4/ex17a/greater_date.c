unsigned int greater_date(unsigned int date1, unsigned int date2) {
	unsigned mask = 16776960;							//mask that "deactivates" all the bits except the year part
	if ((date1 & mask) > (date2 & mask)) return date1;	//checks if the year of date1 is greater than the year of date2
	if ((date1 & mask) < (date2 & mask)) return date2;
	mask = 255;											//mask that "deactivates" all the bits except the month part
	if ((date1 & mask) > (date2 & mask)) return date1;	//checks if the month of date1 is greater than the month of date2
	if ((date1 & mask) < (date2 & mask)) return date2;
	mask = 4278190080;									//mask that "deactivates" all the bits except the day part
	if ((date1 & mask) > (date2 & mask)) return date1;	//checks if the day of date1 is greater than the day of date2
	else return date2;
}
