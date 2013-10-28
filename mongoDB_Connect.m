javaaddpath('F:\Matlab\Social Media Mining\mongo-2.10.1.jar')

import com.mongodb.*;

m = Mongo(); % connect to local db
db = m.getDB('test1'); % get db object
coll = db.getCollection('things1'); % get DBCollection object

doc = BasicDBObject();
doc.put('tweet', S3.text);
doc.put('source', S3.source);
doc.put('count', 1);
%{
info = BasicDBObject();
info.put('x', 203);
info.put('y', 102);
doc.put('info', info);
%}
coll.insert(doc,WriteConcern);
coll.find();
