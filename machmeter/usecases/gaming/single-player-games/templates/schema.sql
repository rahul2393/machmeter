CREATE TABLE player (
 playerId   INT64 NOT NULL,
 FirstName  STRING(1024),
 LastName   STRING(1024),
) PRIMARY KEY (playerId);

CREATE TABLE games (
 playerId   INT64 NOT NULL,
 gameId     INT64 NOT NULL,
 region     STRING(1024),
 score      STRING(1024),
) PRIMARY KEY (playerId, gameId),
 INTERLEAVE IN PARENT player ON DELETE CASCADE;
