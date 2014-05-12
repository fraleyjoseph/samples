#!/bin/sh
psql -U postgres -h localhost -f create-db.sql
psql -U postgres -h localhost -f insert-test-data.sql
# this is a comment

