module.exports =
  #######################
  ## Basic configurations
  #######################

  # Server listen port
  serverPort: 80

  # Server name which will be embedded in
  # RTSP and HTTP response headers
  serverName: 'node-rtsp-rtmp-server/0.2.0'

  # Average frame rate of video
  videoFrameRate: 30

  # Video bitrate in Kbps (informative)
  videoBitrateKbps: 2000

  # Audio bitrate in Kbps (informative)
  audioBitrateKbps: 40

  # What transport is used for feeding audio/video frames
  receiverType: 'unix'  # 'unix' or 'tcp' or 'udp'

  # UNIX domain sockets used for receiving audio and video frames
  # For receiverType == 'unix'
  videoReceiverPath: '/tmp/node_rtsp_rtmp_videoReceiver'
  videoControlPath : '/tmp/node_rtsp_rtmp_videoControl'
  audioReceiverPath: '/tmp/node_rtsp_rtmp_audioReceiver'
  audioControlPath : '/tmp/node_rtsp_rtmp_audioControl'

  # For receiverType == 'tcp' or 'udp'
  videoDataPort   : 1111
  videoControlPort: 1112
  audioDataPort   : 1113
  audioControlPort: 1114
  listenHost      : '0.0.0.0'

  # For receiverType == 'tcp'
  tcpBacklog: 511

  # Server ports for RTP and RTCP
  audioRTPServerPort : 7042  # even
  audioRTCPServerPort: 7043  # odd and contiguous
  videoRTPServerPort : 7044  # even
  videoRTCPServerPort: 7045  # odd and contiguous

  # RTMP stream name
  rtmpApplicationName: 'live'

  # Enable RTMPT and RTMPTE
  enableRTMPT: true

  flv:
    # Has video?
    hasVideo: true

    # See: Adobe Flash Video File Format Specification Version 10.1 - E.4.3.1 VIDEODATA
    videocodecid: 7  # H.264

    # See: Adobe Flash Video File Format Specification Version 10.1 - E.4.2.1 AUDIODATA
    audiocodecid: 10 # AAC


  ##########################
  ## Advanced configurations
  ##########################

  # Period size of each audio frame. Use 1024 for picam.
  audioPeriodSize: 1024

  # HTTP keepalive timeout
  keepaliveTimeoutMs: 30000  # milliseconds

  # RTSP
  rtcpSenderReportIntervalMs: 5000  # milliseconds

  # RTMP ping timeout
  rtmpPingTimeoutMs: 5000  # milliseconds

  # RTMP session timeout
  rtmpSessionTimeoutMs: 60000  # milliseconds

  # RTMPT session timeout
  rtmptSessionTimeoutMs: 60000  # milliseconds

  # RTMP play chunk size
  rtmpPlayChunkSize: 4096  # bytes

  # Maximum number of RTMP messages being sent at once
  rtmpMessageQueueSize: 5

  # If true, H.264 access unit delimiter NAL units are
  # not sent to clients
  dropH264AccessUnitDelimiter: true

  debug:
    # If true, all incoming data are ignored
    dropAllData: false
