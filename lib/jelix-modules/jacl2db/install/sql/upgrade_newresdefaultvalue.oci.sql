
ALTER TABLE %%PREFIX%%JACL2_RIGHTS DROP CONSTRAINT %%PREFIX%%JACL2_RIGHTS_PK;
ALTER TABLE %%PREFIX%%JACL2_RIGHTS ALTER COLUMN ID_ACLRES SET DEFAULT '-';
UPDATE %%PREFIX%%JACL2_RIGHTS SET ID_ACLRES='-' WHERE ID_ACLRES='' OR ID_ACLRES IS NULL;
ALTER TABLE %%PREFIX%%JACL2_RIGHTS ADD CONSTRAINT %%PREFIX%%JACL2_RIGHTS_PK  PRIMARY KEY (ID_ACLSBJ, ID_ACLGRP, ID_ACLRES);
