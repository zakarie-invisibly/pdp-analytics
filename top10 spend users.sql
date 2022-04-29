
SELECT *
from (SELECT  ext_user_id,
  count(inv_pts),
  DENSE_RANK() OVER(order by count(inv_pts) desc) as rank
  FROM
    `publisher-analytics.prod_puba_event_ds.pdp_events`
  WHERE device_type IN('Mobile','Desktop') AND  
  etyp='CRDSPNT' AND 
  (DATE(timestamp)  >= DATE('2022-03-01')) AND
	ext_user_id not in (
       SELECT DISTINCT  ext_user_id
       FROM 
            publisher-analytics.dev_invisibly_dataset.fraudulent_users
       WHERE
            ext_user_id <> 'ext_user_id'
    ) AND
    sessid not in(
      'fe114a4d-8e5d-4db3-96ac-d55dabecafd5',
'5055165c-555c-4a4a-9993-7daa3c203fa9',
'63a73361-5f03-409f-ae0f-f9c415da4657',
'c8376221-b6aa-49d1-b609-ce63afd282c6',
'73da4525-df63-47ab-8c30-055d2d400c06',
'2ae94597-a5f1-479e-86db-6eba8e3443fb',
'276751c7-5f0a-42b1-9952-69771b4b039c',
'b57dea84-1296-40be-9d88-2b1f6d6ae0e4',
'3be443cd-d70a-4ee1-a22b-b1a265d034be',
'87381439-533d-4e3c-a0b5-a6d9096f88fd',
'96ecb9d5-9d96-49d7-ae2c-9dc393d6b1f4',
'889b27a1-b9a4-404d-9be2-87163e233d1e',
'75f4c1bd-ca48-4b1c-b909-c4680520d8e8',
'1ae80c06-8084-4c56-9e76-9c4a47870a64',
'50e49fdc-8f24-4fc7-be6d-7eae3317edb2',
'bccbab9b-7f0a-4b46-8903-98e1a59ee457',
'f77e50f7-7ff6-4a17-b6fb-04358fd88005',
'31440c02-efae-4716-8a00-e5661cc593c2',
'5e3c8a69-2442-4041-a10b-7eb6776633d8',
'7eb0c368-3766-425d-a917-9b6d4c322db6',
'251c8f3a-ed52-4116-8a17-4946c6f7d477',
'ff70cd1c-8746-4f37-b1b1-6868887eab85',
'6e478441-4ccc-4b80-94ff-775e97895604',
'd8590cf4-ddf4-4d6b-9c26-24b0c4365f77',
'68021a73-6fa4-43cf-9b0c-baf93553be41',
'e0b48e0a-3f7b-4d51-8bf1-d5eff63ad3a5',
'6f9367fd-a304-4ccc-9612-7e5c286655ab',
'ad0c4184-8ff4-4a24-931d-7251f8316433',
'771fcfb9-b5c3-4f8a-96d1-55e9d5537946',
'c772a76e-a3be-4d58-bdba-852bfe13eb9b',
'84b52e85-e802-41fe-8752-274678735ac4',
'd4c8e23c-ed8e-476f-8396-9886c1342ee4',
'1927f77d-d3bd-4da2-add3-5117a4085c3a',
'd3ebfb08-85f3-4356-8e57-97f6f3c38f7d',
'd1551153-f772-4d0b-b5f8-0a86490eebab',
'1706ce0b-ef25-4569-b637-b194a4af45d6',
'8bffe500-0eb3-4e7e-9d9b-12732e59fd71',
'c61cf084-d61d-4aab-a0b2-cea615a7b882',
'84350cb6-8733-420f-bbfd-99da15dc8e98',
'5af49568-1066-46ef-aa62-478be3d4009c',
'5ff394cb-e7dd-4fcc-8105-5da8380143b7',
'11b0374b-0ae2-4721-9f40-653cad448ea1',
'df1ebaeb-c888-4047-9e9e-ffc6f560d4aa',
'49227ef1-b432-45c8-8cd2-be6868646725',
'b0cbcbfe-c81a-4a43-a4e2-882dfb7f0829',
'c18dea4f-040a-4c2d-845c-8fe41624914a',
'32fb6af6-469a-4f76-8a5e-1db4f5c9909a',
'df681354-21c9-49b9-9af1-61a2b3f9ba12',
'cbeb1c6c-86ee-4357-8201-f6ddba0e05ae',
'ac18139e-ae39-4c71-a504-ddb2dd6c5baa',
'e980e503-5248-44f3-8f10-7f8060355d66',
'62f10f31-286d-43ea-80a5-77464889f670',
'936a8a51-068b-45b6-88c8-2e980d8cdb2c',
'ce46d459-b4aa-4435-a148-094e6488a52e',
'fc006fd8-9c84-47cd-b79c-5df063d9abb7',
'95cb4193-0499-4d94-b815-4d4a14211819',
'089b575c-bab4-437b-8324-439f7677d9e4',
'b0c6d62a-25db-4fb7-a01f-7c9aefa08428',
'7ed4e131-6010-4054-97bc-3719408d1801',
'670f3b8a-cf2d-4925-b7f7-b527fc7354f9',
'db0b2520-e15e-4da5-861e-516681342013',
'e35eb3a5-1e77-4359-9d7c-10e91b538fdc',
'cf8cc114-1963-4335-8941-e685384ac46c',
'd7669314-5d59-4f99-b489-28a6d5b3e674',
'7360fee3-044a-4b67-b750-2faa439bd0ad',
'40e466a2-1bc1-414b-a5f6-4dde1b6784b6',
'7ffa9f24-aaa6-472e-9bb8-216124e5749a',
'e804aaf7-9aa8-4a6b-a215-6844f3d46243',
'ccf90040-53c8-47ff-8fda-5255742754fe',
'6657c849-a374-45d8-b23c-71f086db973e',
'cc835d40-9ca6-47b2-96d7-7857ec01d307',
'd9732f02-46e4-4b4e-be00-7d288a6d9c1d',
'56b3473b-a7cf-465f-a61a-175425bdd76f',
'bb58168f-0206-47d9-8eac-c594b0a56fa7',
'8cc9c10b-89e5-4420-bb19-cdb77425891f',
'74ed0af2-4ae3-48d8-9b71-02deddd79494',
'abc73a76-7c99-4515-aec9-e204921c5e5f',
'ed869e4f-336d-40ba-a946-7580c44e9ecc',
'b86ce3a2-5d09-486b-b746-9f2bf4d67df9',
'ed3d0488-778b-41b2-8c11-4e9b487d0498',
'5322b39f-468b-44d9-a8e1-e613a216b8fb',
'1c6d5638-2cee-40b3-ae5c-9abd3b7f1b0e',
'aadbf2c1-3910-484f-ad00-e9996118e6e7',
'af209179-fb47-44c3-8e2c-62b85e8b790d',
'3af28d80-239c-4045-8996-04430e98918d',
'80a0488c-260c-4ee6-960f-5b0a38c50b84',
'd3716a5d-7f55-44a7-ad64-07ef3eea6ddb',
'548b5b98-bb55-4cb9-929d-1c7dff94b61c',
'e17d7740-a0ba-4e60-8cb0-321d0de900c2',
'a5582ba4-a685-44a4-be21-8d82e1169f9f',
'd9c29a69-05dd-4eac-bf6f-a1b5a9593f20',
'3abfcc49-cc51-45e6-acae-1731272dffc8',
'6b1dd0ff-c0f7-4122-ba33-f3f5b4ae78ae',
'bc209ddd-55e7-4779-9727-03d6fbb194f6',
'e46b12b9-77f1-42e7-ac3d-ce6780ed00af',
'25e418ce-08c3-4613-b63c-880440af04ef',
'c580fc62-a0ed-42d4-9374-e25fabfcbf83',
'37224ea7-791e-4d70-bf6e-7c6b86ac6d00',
'cc0fe89f-b641-4131-831b-bc05b75b5e85',
'c98f8d04-e0f1-48c0-a358-ae79f80ea642',
'26ab229c-40df-40bf-9ac9-bb941af91416',
'ad72741d-1cd0-4637-af47-7d0047c8c8b3',
'65a23889-5e28-4afc-8aab-44fc6deb2646',
'5f347467-74b1-4597-9f2f-a9b2c380357c',
'715c14c0-75b7-4424-814c-54e59c95220e',
'b2dbbcf1-38dc-49cb-92de-fb6ddd1e1a59',
'd1598c20-5f5e-49bc-b58f-a465ce038530',
'b56290e8-f8d3-4ac1-aced-157cd74cad91',
'5e79f65e-a2ed-48e8-93e0-c19e11415d13',
'97a9d59f-328d-4c11-a172-97c0067e7d8f',
'd816d807-ab14-4d63-904e-fa896e6fc0b4',
'6fd5859a-5377-4ede-b146-8b12f91eb631',
'7babeff2-c97c-47b9-913a-8f1621495a04',
'75912a34-9fbb-4265-89d4-a7e34efcc9c1',
'5f0a7593-4b4b-4cff-a318-f1f5a1ea70ad',
'cfdb18d3-c580-47be-b6d6-68086a6437c6',
'71cf5e53-fa3a-4433-95a4-50179695e523',
'6a4e73ab-d392-4990-bb2a-b2783ebfc970',
'56220710-00e2-4fb6-b0a6-b9d05286b986',
'b56c9023-d0a6-41d6-90dd-3126db1c35bd',
'fc152890-97fc-4a2c-b1cf-2e77e0470ffc',
'de1dbc3c-917b-4247-a73e-a4f2d627c30c',
'5f23602c-fbd5-4cc0-9f2a-63cfcef4a5a7',
'7c5c8480-4024-4506-b40c-cea600e7a666',
'24f20049-2532-49df-8553-50a874e6c38b',
'a3a2b2db-d1b1-4767-95b8-856c092b5482',
'6256b466-ba31-4109-bbe9-8b059693c548',
'64e6e4f8-a958-4be5-9a1f-dd83f6baf630',
'95b89238-fcf5-455a-a213-9d9917f8e1e1',
'09330f5a-f31c-4fd0-b040-44f43d5103ec',
'7de16eb9-1d20-49dd-9827-cb9433d7c6c4',
'dbdbe24c-52d3-4ff4-9491-ee529a2892da',
'ef928fa5-dac4-4000-bf30-c50c35eb2a3c',
'90d41521-bef3-42e9-a41d-af91b1459744',
'a1c420dc-a21c-4c56-b3bd-f01373e5ae79',
'5fb6a455-da56-4600-9a87-feca0b37b34b',
'e13b5fc8-1359-40be-9884-a2f578ff0a85',
'80536fc6-165d-4716-b708-51a7495eb8e3'

    )
  GROUP BY 1
  ORDER BY 2 DESC)x
  WHERE rank <=10
