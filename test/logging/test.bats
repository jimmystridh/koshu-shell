#!/usr/bin/env bats

@test "logs verbose level message" {
  run "$KOSHU_SOURCE_DIR/koshu.sh" default --file "$BATS_TEST_DIRNAME/koshufile"

  [[ "$output" == *"verbose"* ]]
}

@test "logs success level message" {
  run "$KOSHU_SOURCE_DIR/koshu.sh" default --file "$BATS_TEST_DIRNAME/koshufile"

  [[ "$output" == *"success"* ]]
}

@test "logs info level message" {
  run "$KOSHU_SOURCE_DIR/koshu.sh" default --file "$BATS_TEST_DIRNAME/koshufile"

  [[ "$output" == *"info"* ]]
}

@test "logs warn level message" {
  run "$KOSHU_SOURCE_DIR/koshu.sh" default --file "$BATS_TEST_DIRNAME/koshufile"

  [[ "$output" == *"warn"* ]]
}

@test "logs error level message" {
  run "$KOSHU_SOURCE_DIR/koshu.sh" default --file "$BATS_TEST_DIRNAME/koshufile"

  [[ "$output" == *"error"* ]]
}
