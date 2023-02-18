aws budgets create-budget \
    --account-id 731727075972 \
    --budget file://budget.json \
    --notifications-with-subscribers file://budget-notifications-with-subscribers.json
