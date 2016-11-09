import React from 'react';
import ReactPlayer from 'react-player';

class MediaPlayer extends React.Component {
  constructor(props) {
    super(props);

    this. state = {
      url: this.props.currentSong,
      playing: true,
      volume: 0.8,
      played: 0,
      loaded: 0,
      seeking: false,
      duration: 0
    };

    this.playPause = this.playPause.bind(this);
    this.stop = this.stop.bind(this);

    this.setVolume = this.setVolume.bind(this);
    this.onSeekMouseDown = this.onSeekMouseDown.bind(this);
    this.onSeekChange = this.onSeekChange.bind(this);
    this.onSeekMouseUp = this.onSeekMouseUp.bind(this);
    this.onProgress = this.onProgress.bind(this);
  }

  componentWillReceiveProps(newProps){
    this.setState({
      url: newProps.currentSong,
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

  render(){
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

        <div id='player controls'>
          <ul>
            <li>
              <button onClick={this.playPause}>{this.state.playng? '||' : "|>"}</button>
            </li>
            <li>
              <input
                type='range' min={0} max={1} step='any'
                value={this.state.played}
                onMouseDown={this.onSeekMouseDown}
                onChange={this.onSeekChange}
                onMouseUp={this.onSeekMouseUp}
              />
            </li>
            <li>
              <p>Volume</p>
              <input type='range' min={0} max={1} step='any' value={this.state.volume} onChange={this.setVolume} />
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
