import React from 'react';
import MessageList from '../containers/message_list';
import ChannelList from '../containers/channel_list';

const App = (props) => {
  return (
    <div className="messaging-wrapper">
      <div className="logo-container">
        <img className="messaging-logo" src="https://i.pinimg.com/originals/38/b6/67/38b6671e2093e23b275977fa5b87397a.jpg" alt="logo" />
      </div>
      <ChannelList channelFromParams={props.match.params.channel} />
      <MessageList channelFromParams={props.match.params.channel} />
    </div>
  );
};

export default App;
