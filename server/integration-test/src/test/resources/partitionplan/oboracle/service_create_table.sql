create table ${const:com.oceanbase.odc.service.partitionplan.PartitionPlanServiceTest.ORACLE_RANGE_TABLE_NAME}(
    c1 date,
    c2 timestamp(6),
    c5 varchar2(64)
) partition by range (c1, c2) (
    partition p0 values less than(to_date('2022-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), to_timestamp('2022-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS')),
    partition p1 values less than(to_date('2023-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), to_timestamp('2023-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS')),
    partition p20240425 values less than(to_date('2024-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'), to_timestamp('2024-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'))
);