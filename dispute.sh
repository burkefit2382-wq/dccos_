#!/bin/bash

echo "Starting Credit Dispute Automation..."
echo "Filing dispute for incorrect credit report entry..."

curl -X POST \
  -H "Authorization: Bearer $EXPERIAN_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "dispute_type": "incorrect_entry",
    "description": "Late payment reported incorrectly",
    "credit_report_id": "123456"
  }' \
  https://api.experian.com/dispute

echo "Dispute submitted successfully."

# Log the action
echo "Dispute filed at $(date)" >> "$LOG_FILE"