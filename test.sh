#!/bin/sh
[ $# -lt 1 ]&& echo "Need Input a status" && exit 1
STATUS="$1"
if [ "$STATUS" == "UPDATE_COMPLETE" ] ; then
  echo "Adding change to git repository"
elif [ "$STATUS" == "UPDATE_ROLLBACK_COMPLETE" ] ;then
	echo "Error: CloudFormation status ($STATUS), cannot continue automatically.."
	exit 1
else
  echo "Error: Unknown CloudFormation status ($STATUS), cannot continue automatically.."
fi
