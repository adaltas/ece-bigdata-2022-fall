# Big Data Ecosystem

## Lab 6: Oozie

### Goals

Chain the Hive actions done in [lab4](../lab4) using Oozie.

### Ressources

The Oozie workflow is composed of:

- The `workflow.xml` that contains the DAG of actions to be run (you will have to complete this file)
- The `job.properties` file that contains the job properties, you will have to modify some of them
- The `scripts` folder that will contain our Hive scripts

### Useful links

- [Oozie documentation](https://oozie.apache.org/docs/4.3.1/)
- [Oozie Hive2 Action](https://oozie.apache.org/docs/4.3.1/DG_Hive2ActionExtension.html)

### How to run a workflow

1. Put the workflow folder in HDFS (in your user directory for example)
   ```bash
   hdfs dfs -put -f oozie_wf/ "/user/$USER"
   ```
2. Submit the job using the `oozie` CLI
   ```bash
   oozie job -run -config oozie_wf/job.properties -oozie http://oozie-1.au.adaltas.cloud:11000/oozie
   ```
3. To get the status of the job from the CLI
   ```bash
   oozie job -info 0000040-201011090406050-oozie-oozi-W -oozie http://oozie-1.au.adaltas.cloud:11000/oozie
   ```

### TO DO

1. Complete the `workflow.base.xml` to be able to run it (2 parameters to add: `jdbc-url`, `script`)
2. Adapt the `job.properties` to your workflow
3. Run the job
4. Make sure there are no errors
5. Add actions to the workflow:
   1. Create the ORC drivers table
   2. Insert data from the CSV table to the ORC table
