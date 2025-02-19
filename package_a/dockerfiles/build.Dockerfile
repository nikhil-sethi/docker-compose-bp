FROM package_a:deps AS builder
ARG TARGET_WORKSPACE_DIR

# get the source files to build
COPY src/package_a/ $TARGET_WORKSPACE_DIR/src

WORKDIR $TARGET_WORKSPACE_DIR

# small test to check mounts
RUN cd $TARGET_WORKSPACE_DIR/src

# rosdep install
# colcon build

# optionally also export only binaries from /install. if you're past the dev stage

# FROM package_a:deps AS service
# COPY --from=builder install/ <wherever you want to install binaries>
