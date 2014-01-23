#ifndef SLAMLASER_ICE
#define SLAMLASER_ICE

module RoboCompSlamLaser
{
  struct Pose2D
  {
    float x;
    float z;
    float alpha;
  };

  sequence<byte> Grid;

  struct MapRect
  {
    float minX;
    float maxX;
    float minZ;
    float maxZ;
  };

  struct SLAMParams
  {
    float millimetersPerCell;
    MapRect rect;
    int width;
    int height;
  };

  struct GridMap
  {
    SLAMParams params;
    Grid data;
  };

  interface SlamLaser
  {
    idempotent void getWholeGrid(out GridMap map, out Pose2D pose);
    idempotent void getPartialGrid(MapRect rect, out GridMap map, out Pose2D pose);
    void initializeRobotPose(Pose2D pose);
    bool saveMap(string path);
  };
};

#endif
