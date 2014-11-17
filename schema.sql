DROP TABLE IF EXISTS sentences CASCADE;
CREATE TABLE sentences(
 id                          bigint    ,
 doc_id                      text      ,
 text                        text      ,
 original_text               text[]    ,
 words                       text[]    ,
 pos_tags                    text[]    ,
 ner_tags                    text[]    ,
 lemma                       text[]    ,
 gender                      text[]    ,
 true_case_text              text[]    ,
 timex_value                 text[]    ,
 timex_type                  text[]    ,
 character_offset_begin      integer[] ,
 character_offset_end        integer[] ,
 dep_graph                   text[]    ,
 sentence_index              integer   ,
 paragraph                   integer   ,
 sentence_token_offset_begin integer   ,
 constituency_parse          text      ,
 sentence_id                 text      
);


DROP TABLE IF EXISTS disaster_mentions CASCADE;
CREATE TABLE disaster_mentions(
  sentence_id text,
  start_position int,
  length int,
  text text,
  mention_id text  -- unique identifier for disaster_mentions
  );

DROP TABLE IF EXISTS toll_mentions CASCADE;
CREATE TABLE toll_mentions(
  sentence_id text,
  start_position int,
  length int,
  text text,
  mention_id text  -- unique identifier for disaster_mentions
  );

DROP TABLE IF EXISTS disaster_toll CASCADE;
CREATE TABLE disaster_toll(
  disaster_id text,
  toll_id text,
  sentence_id text,
  description text,
  is_true boolean,
  relation_id text, -- unique identifier for disaster_toll
  id bigint   -- reserved for DeepDive
  );

DROP TABLE IF EXISTS disaster_toll_features CASCADE;
CREATE TABLE disaster_toll_features(
  relation_id text,
  feature text);