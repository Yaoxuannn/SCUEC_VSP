CREATE TABLE IF NOT EXISTS user_info (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
username STRING NOT NULL UNIQUE,
truename STRING NOT NULL,
email STRING NOT NULL,
isroot BOOLEAN DEFAULT 0,
isactive BOOLEAN DEFAULT 1
);
CREATE TABLE IF NOT EXISTS secret (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
username STRING NOT NULL UNIQUE,
secret STRING NOT NULL
);
CREATE TABLE IF NOT EXISTS user_state (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
username STRING NOT NULL UNIQUE,
videopass SMALLINT DEFAULT 0,
instructionpass SMALLINT DEFAULT 0,
score SMALLINT DEFAULT 0,
havetest BOOLEAN DEFAULT 0,
videowatched STRING DEFAULT ""
);
CREATE TABLE IF NOT EXISTS machine_requirement (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
videorequire SMALLINT NOT NULL,
instructionrequire SMALLINT NOT NULL,
scorerequire SMALLINT NOT NULL
);
CREATE TABLE IF NOT EXISTS instruction_record (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
username STRING NOT NULL UNIQUE,
haveread STRING NOT NULL DEFAULT ""
);
CREATE TABLE IF NOT EXISTS reminders (
machineid INTEGER NOT NULL,
text STRING NOT NULL DEFAULT ""
)
