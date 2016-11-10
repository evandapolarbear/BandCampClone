import React from 'react';
import ReactPlayer from 'react-player';
import {hashHistory} from 'react-router';

class MediaPlayer extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      url: this.props.currentSong.url,
      playing: true,
      volume: 0.8,
      played: 0,
      loaded: 0,
      seeking: false,
      duration: 0,
      unmute: 0
    };

    this.playPause = this.playPause.bind(this);
    this.stop = this.stop.bind(this);

    this.setVolume = this.setVolume.bind(this);
    this.onSeekMouseDown = this.onSeekMouseDown.bind(this);
    this.onSeekChange = this.onSeekChange.bind(this);
    this.onSeekMouseUp = this.onSeekMouseUp.bind(this);
    this.onProgress = this.onProgress.bind(this);
    this.playingIcon = this.playingIcon.bind(this);
    this.volumeIcon = this.volumeIcon.bind(this);
    this.handleMute = this.handleMute.bind(this);
  }

  componentWillReceiveProps(newProps){
    this.setState({
      url: newProps.currentSong.url,
      playing: true,
      played: 0,
      loaded: 0
    });
  }

  playPause(){
    this.setState({ playing: !this.state.playing });
  }

  stop() {
    this.setState({ ["url"]: null, ["playing"]: false });
  }

  setVolume(e) {
    this.setState({ ["volume"]: parseFloat(e.target.value) });
  }

  onSeekMouseDown(e) {
    this.setState({ ["seeking"]: true });
  }

  onSeekChange(e) {
    this.setState({ ["played"]: parseFloat(e.target.value) });
  }

  onSeekMouseUp(e) {
    this.setState({ ["seeking"]: false });
    this.player.seekTo(parseFloat(e.target.value));
  }

  onProgress(nextState) {
    if (!this.state.seeking) {
      this.setState(nextState);
    }
  }

  handleMute(){
    if (this.state.volume > 0) {
      this.setState({unmute: this.state.volume, volume: 0});
    } else if(this.state.volume === 0 && this.state.unmute === 0) {
      this.setState({volume: 0.8});
    } else {
      this.setState({volume: this.state.unmute});
    }
  }

  playingIcon() {
    if (this.state.playing){
      return(<i onClick={this.playPause} className='fa fa-pause icon'></i>);
    } else {
      return(<i onClick={this.playPause} className='fa fa-play icon'></i>);
    }
  }

  volumeIcon(){
    if(this.state.volume === 0) {
      return(<i onClick={e => this.handleMute()} className='fa fa-volume-off icon'></i>);
    } else if(this.state.volume < .8) {
      return(<i onClick={e => this.handleMute()} className='fa fa-volume-down icon'></i>);
    } else {
      return(<i onClick={e => this.handleMute()} className='fa fa-volume-up icon'></i>);
    }
  }

  handleClick(url){
    return e => hashHistory.push(url);
  }

  render(){
    const artistAddress = '/' + this.props.currentArtist.id;

    return (
      <div id='player'>
        <div id='playerInternals'>
          <ReactPlayer
            ref={player => (this.player = player)}
            url={this.state.url}
            volume={this.state.volume}
            height={0}
            width={0}
            playing={this.state.playing}
            onReady={() => this.setState({playing: true}) }
            onStart={() => console.log('onStart')}
            onPlay={() => this.setState({playing: true })}
            onPause={() => this.setState({playing: false })}
            onEnded={() => this.setState({playing: false })}
            onError={e => console.log('onError', e)}
            onProgress={this.onProgress}
            onDuration={duration => this.setState({ duration })}
            />
        </div>

        <div className='player-controls'>
          <ul>
            <li onClick={this.handleClick(artistAddress)} className='player-info'>
              <p className='player-artistname'>{this.props.currentArtist.username}</p>
              <p className='player-song-title'>{this.props.currentSong.title}</p>
            </li>
            <li>
              {this.playingIcon()}
              <input className='seek-bar'
                type='range' min={0} max={1} step='any'
                value={this.state.played}
                onMouseDown={this.onSeekMouseDown}
                onChange={this.onSeekChange}
                onMouseUp={this.onSeekMouseUp}
              />
            </li>

            <li>
              {this.volumeIcon()}
              <input className="volume-bar" type='range' min={0} max={1} step='any' value={this.state.volume} onChange={this.setVolume} />
            </li>
          </ul>
        </div>
        <div id='playerInfo'>

        </div>

      </div>
    );
  }
}

export default MediaPlayer;
