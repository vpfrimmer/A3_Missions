_hasAC = paramsArray select 0;

if(_hasAC == 0) then
{
	deleteVehicle podnos;
}
else 
{
	deleteVehicle mk6;
};