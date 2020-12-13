{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.GetQueryResults
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Streams the results of a single query execution specified by @QueryExecutionId@ from the Athena query results location in Amazon S3. For more information, see <https://docs.aws.amazon.com/athena/latest/ug/querying.html Query Results> in the /Amazon Athena User Guide/ . This request does not execute the query but returns results. Use 'StartQueryExecution' to run a query.
--
-- To stream query results successfully, the IAM principal with permission to call @GetQueryResults@ also must have permissions to the Amazon S3 @GetObject@ action for the Athena query results location.
-- /Important:/ IAM principals with permission to the Amazon S3 @GetObject@ action for the query results location are able to retrieve query results from Amazon S3 even if permission to the @GetQueryResults@ action is denied. To restrict user or role access, ensure that Amazon S3 permissions to the Athena query location are denied.
--
-- This operation returns paginated results.
module Network.AWS.Athena.GetQueryResults
  ( -- * Creating a request
    GetQueryResults (..),
    mkGetQueryResults,

    -- ** Request lenses
    gqrNextToken,
    gqrQueryExecutionId,
    gqrMaxResults,

    -- * Destructuring the response
    GetQueryResultsResponse (..),
    mkGetQueryResultsResponse,

    -- ** Response lenses
    gqrrsUpdateCount,
    gqrrsNextToken,
    gqrrsResultSet,
    gqrrsResponseStatus,
  )
where

import Network.AWS.Athena.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Page
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkGetQueryResults' smart constructor.
data GetQueryResults = GetQueryResults'
  { -- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
    nextToken :: Lude.Maybe Lude.Text,
    -- | The unique ID of the query execution.
    queryExecutionId :: Lude.Text,
    -- | The maximum number of results (rows) to return in this request.
    maxResults :: Lude.Maybe Lude.Natural
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetQueryResults' with the minimum fields required to make a request.
--
-- * 'nextToken' - A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
-- * 'queryExecutionId' - The unique ID of the query execution.
-- * 'maxResults' - The maximum number of results (rows) to return in this request.
mkGetQueryResults ::
  -- | 'queryExecutionId'
  Lude.Text ->
  GetQueryResults
mkGetQueryResults pQueryExecutionId_ =
  GetQueryResults'
    { nextToken = Lude.Nothing,
      queryExecutionId = pQueryExecutionId_,
      maxResults = Lude.Nothing
    }

-- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gqrNextToken :: Lens.Lens' GetQueryResults (Lude.Maybe Lude.Text)
gqrNextToken = Lens.lens (nextToken :: GetQueryResults -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: GetQueryResults)
{-# DEPRECATED gqrNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The unique ID of the query execution.
--
-- /Note:/ Consider using 'queryExecutionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gqrQueryExecutionId :: Lens.Lens' GetQueryResults Lude.Text
gqrQueryExecutionId = Lens.lens (queryExecutionId :: GetQueryResults -> Lude.Text) (\s a -> s {queryExecutionId = a} :: GetQueryResults)
{-# DEPRECATED gqrQueryExecutionId "Use generic-lens or generic-optics with 'queryExecutionId' instead." #-}

-- | The maximum number of results (rows) to return in this request.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gqrMaxResults :: Lens.Lens' GetQueryResults (Lude.Maybe Lude.Natural)
gqrMaxResults = Lens.lens (maxResults :: GetQueryResults -> Lude.Maybe Lude.Natural) (\s a -> s {maxResults = a} :: GetQueryResults)
{-# DEPRECATED gqrMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

instance Page.AWSPager GetQueryResults where
  page rq rs
    | Page.stop (rs Lens.^. gqrrsNextToken) = Lude.Nothing
    | Page.stop
        ( rs
            Lens.^? gqrrsResultSet Lude.. Lens._Just Lude.. rsRows Lude.. Lens._Just
        ) =
      Lude.Nothing
    | Lude.otherwise =
      Lude.Just Lude.$
        rq
          Lude.& gqrNextToken Lens..~ rs Lens.^. gqrrsNextToken

instance Lude.AWSRequest GetQueryResults where
  type Rs GetQueryResults = GetQueryResultsResponse
  request = Req.postJSON athenaService
  response =
    Res.receiveJSON
      ( \s h x ->
          GetQueryResultsResponse'
            Lude.<$> (x Lude..?> "UpdateCount")
            Lude.<*> (x Lude..?> "NextToken")
            Lude.<*> (x Lude..?> "ResultSet")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders GetQueryResults where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("AmazonAthena.GetQueryResults" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON GetQueryResults where
  toJSON GetQueryResults' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("NextToken" Lude..=) Lude.<$> nextToken,
            Lude.Just ("QueryExecutionId" Lude..= queryExecutionId),
            ("MaxResults" Lude..=) Lude.<$> maxResults
          ]
      )

instance Lude.ToPath GetQueryResults where
  toPath = Lude.const "/"

instance Lude.ToQuery GetQueryResults where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkGetQueryResultsResponse' smart constructor.
data GetQueryResultsResponse = GetQueryResultsResponse'
  { -- | The number of rows inserted with a CREATE TABLE AS SELECT statement.
    updateCount :: Lude.Maybe Lude.Integer,
    -- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
    nextToken :: Lude.Maybe Lude.Text,
    -- | The results of the query execution.
    resultSet :: Lude.Maybe ResultSet,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetQueryResultsResponse' with the minimum fields required to make a request.
--
-- * 'updateCount' - The number of rows inserted with a CREATE TABLE AS SELECT statement.
-- * 'nextToken' - A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
-- * 'resultSet' - The results of the query execution.
-- * 'responseStatus' - The response status code.
mkGetQueryResultsResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  GetQueryResultsResponse
mkGetQueryResultsResponse pResponseStatus_ =
  GetQueryResultsResponse'
    { updateCount = Lude.Nothing,
      nextToken = Lude.Nothing,
      resultSet = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The number of rows inserted with a CREATE TABLE AS SELECT statement.
--
-- /Note:/ Consider using 'updateCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gqrrsUpdateCount :: Lens.Lens' GetQueryResultsResponse (Lude.Maybe Lude.Integer)
gqrrsUpdateCount = Lens.lens (updateCount :: GetQueryResultsResponse -> Lude.Maybe Lude.Integer) (\s a -> s {updateCount = a} :: GetQueryResultsResponse)
{-# DEPRECATED gqrrsUpdateCount "Use generic-lens or generic-optics with 'updateCount' instead." #-}

-- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gqrrsNextToken :: Lens.Lens' GetQueryResultsResponse (Lude.Maybe Lude.Text)
gqrrsNextToken = Lens.lens (nextToken :: GetQueryResultsResponse -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: GetQueryResultsResponse)
{-# DEPRECATED gqrrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The results of the query execution.
--
-- /Note:/ Consider using 'resultSet' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gqrrsResultSet :: Lens.Lens' GetQueryResultsResponse (Lude.Maybe ResultSet)
gqrrsResultSet = Lens.lens (resultSet :: GetQueryResultsResponse -> Lude.Maybe ResultSet) (\s a -> s {resultSet = a} :: GetQueryResultsResponse)
{-# DEPRECATED gqrrsResultSet "Use generic-lens or generic-optics with 'resultSet' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gqrrsResponseStatus :: Lens.Lens' GetQueryResultsResponse Lude.Int
gqrrsResponseStatus = Lens.lens (responseStatus :: GetQueryResultsResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: GetQueryResultsResponse)
{-# DEPRECATED gqrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
