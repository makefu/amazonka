{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.RespondActivityTaskFailed
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used by workers to tell the service that the 'ActivityTask' identified by the @taskToken@ has failed with @reason@ (if specified). The @reason@ and @details@ appear in the @ActivityTaskFailed@ event added to the workflow history.
--
--
-- A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to 'RespondActivityTaskCompleted' , 'RespondActivityTaskCanceled' , RespondActivityTaskFailed, or the task has <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types timed out> .
--
-- __Access Control__
--
-- You can use IAM policies to control this action's access to Amazon SWF resources as follows:
--
--     * Use a @Resource@ element with the domain name to limit the action to only specified domains.
--
--     * Use an @Action@ element to allow or deny permission to call this action.
--
--     * You cannot use an IAM policy to constrain this action's parameters.
--
--
--
-- If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's @cause@ parameter is set to @OPERATION_NOT_PERMITTED@ . For details and example IAM policies, see <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows> in the /Amazon SWF Developer Guide/ .
--
module Network.AWS.SWF.RespondActivityTaskFailed
    (
    -- * Creating a Request
      respondActivityTaskFailed
    , RespondActivityTaskFailed
    -- * Request Lenses
    , ratfReason
    , ratfDetails
    , ratfTaskToken

    -- * Destructuring the Response
    , respondActivityTaskFailedResponse
    , RespondActivityTaskFailedResponse
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SWF.Types
import Network.AWS.SWF.Types.Product

-- | /See:/ 'respondActivityTaskFailed' smart constructor.
data RespondActivityTaskFailed = RespondActivityTaskFailed'
  { _ratfReason    :: !(Maybe Text)
  , _ratfDetails   :: !(Maybe Text)
  , _ratfTaskToken :: !Text
  } deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RespondActivityTaskFailed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ratfReason' - Description of the error that may assist in diagnostics.
--
-- * 'ratfDetails' - Detailed information about the failure.
--
-- * 'ratfTaskToken' - The @taskToken@ of the 'ActivityTask' . /Important:/ @taskToken@ is generated by the service and should be treated as an opaque value. If the task is passed to another process, its @taskToken@ must also be passed. This enables it to provide its progress and respond with results.
respondActivityTaskFailed
    :: Text -- ^ 'ratfTaskToken'
    -> RespondActivityTaskFailed
respondActivityTaskFailed pTaskToken_ =
  RespondActivityTaskFailed'
    { _ratfReason = Nothing
    , _ratfDetails = Nothing
    , _ratfTaskToken = pTaskToken_
    }


-- | Description of the error that may assist in diagnostics.
ratfReason :: Lens' RespondActivityTaskFailed (Maybe Text)
ratfReason = lens _ratfReason (\ s a -> s{_ratfReason = a})

-- | Detailed information about the failure.
ratfDetails :: Lens' RespondActivityTaskFailed (Maybe Text)
ratfDetails = lens _ratfDetails (\ s a -> s{_ratfDetails = a})

-- | The @taskToken@ of the 'ActivityTask' . /Important:/ @taskToken@ is generated by the service and should be treated as an opaque value. If the task is passed to another process, its @taskToken@ must also be passed. This enables it to provide its progress and respond with results.
ratfTaskToken :: Lens' RespondActivityTaskFailed Text
ratfTaskToken = lens _ratfTaskToken (\ s a -> s{_ratfTaskToken = a})

instance AWSRequest RespondActivityTaskFailed where
        type Rs RespondActivityTaskFailed =
             RespondActivityTaskFailedResponse
        request = postJSON swf
        response
          = receiveNull RespondActivityTaskFailedResponse'

instance Hashable RespondActivityTaskFailed where

instance NFData RespondActivityTaskFailed where

instance ToHeaders RespondActivityTaskFailed where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("SimpleWorkflowService.RespondActivityTaskFailed" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.0" :: ByteString)])

instance ToJSON RespondActivityTaskFailed where
        toJSON RespondActivityTaskFailed'{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _ratfReason,
                  ("details" .=) <$> _ratfDetails,
                  Just ("taskToken" .= _ratfTaskToken)])

instance ToPath RespondActivityTaskFailed where
        toPath = const "/"

instance ToQuery RespondActivityTaskFailed where
        toQuery = const mempty

-- | /See:/ 'respondActivityTaskFailedResponse' smart constructor.
data RespondActivityTaskFailedResponse =
  RespondActivityTaskFailedResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RespondActivityTaskFailedResponse' with the minimum fields required to make a request.
--
respondActivityTaskFailedResponse
    :: RespondActivityTaskFailedResponse
respondActivityTaskFailedResponse = RespondActivityTaskFailedResponse'


instance NFData RespondActivityTaskFailedResponse
         where
