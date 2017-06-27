#!/bin/sh
STATUS="$1"
while true;
do
if [ "$STATUS" == "UPDATE_COMPLETE" ] ; then
  echo "Adding change to git repository"
break
elif [ "$STATUS" == "UPDATE_ROLLBACK_COMPLETE" ] ;then
	echo "Error: CloudFormation status ($STATUS), cannot continue automatically.."
	exit 1
else
  echo "Error: Unknown CloudFormation status ($STATUS), cannot continue automatically.."
fi
done
